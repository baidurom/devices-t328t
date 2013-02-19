.class Lcom/htc/app/FilePickerRecentFragment$1;
.super Ljava/lang/Object;
.source "FilePickerRecentFragment.java"

# interfaces
.implements Lcom/htc/app/FilePickerListView$LayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerRecentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerRecentFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerRecentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/app/FilePickerRecentFragment$1;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment$1;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #calls: Lcom/htc/app/FilePickerRecentFragment;->updateCountOfRecentListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerRecentFragment;->access$300(Lcom/htc/app/FilePickerRecentFragment;)V

    .line 151
    return-void
.end method
