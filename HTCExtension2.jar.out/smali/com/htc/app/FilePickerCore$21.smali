.class Lcom/htc/app/FilePickerCore$21;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->createSortDialog()Landroid/app/Dialog;
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
    .line 3892
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$21;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 3896
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$21;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$6600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3897
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$21;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$6600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 3898
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$21;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$6600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 3901
    :cond_0
    return-void
.end method
