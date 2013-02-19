.class Lcom/htc/app/FilePickerTypeFragment$1;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Lcom/htc/app/FilePickerListView$LayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerTypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 88
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$1;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$1;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #calls: Lcom/htc/app/FilePickerTypeFragment;->updateCountOfTypeListViewHeader()V
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$100(Lcom/htc/app/FilePickerTypeFragment;)V

    .line 91
    return-void
.end method
