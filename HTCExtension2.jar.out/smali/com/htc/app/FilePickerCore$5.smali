.class Lcom/htc/app/FilePickerCore$5;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V
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
    .line 1331
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$5;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$5;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$5;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    #calls: Lcom/htc/app/FilePickerCore;->checkCloudServiceDataSourceFromIntentRequest(Lcom/htc/app/FilePickerCloudHelper;)Z
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$1500(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerCloudHelper;)Z

    .line 1336
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$5;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v1, 0x7

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    .line 1338
    return-void
.end method
