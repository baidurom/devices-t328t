.class Lcom/htc/app/FilePickerCore$34;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
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
    .line 4339
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$34;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 4341
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$34;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4342
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$34;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->cancelDownloadDialog()V

    .line 4344
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$34;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 4345
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$34;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 4346
    return-void
.end method
