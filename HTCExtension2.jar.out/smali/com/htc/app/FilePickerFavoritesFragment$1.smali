.class Lcom/htc/app/FilePickerFavoritesFragment$1;
.super Ljava/lang/Object;
.source "FilePickerFavoritesFragment.java"

# interfaces
.implements Lcom/htc/app/FilePickerListView$LayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerFavoritesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 130
    iput-object p1, p0, Lcom/htc/app/FilePickerFavoritesFragment$1;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment$1;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->updateCountOfFavoritesListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerFavoritesFragment;->access$300(Lcom/htc/app/FilePickerFavoritesFragment;)V

    .line 133
    return-void
.end method
