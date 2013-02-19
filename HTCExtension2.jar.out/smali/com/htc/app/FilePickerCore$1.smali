.class Lcom/htc/app/FilePickerCore$1;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 448
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$000(Lcom/htc/app/FilePickerCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    new-instance v1, Lcom/htc/app/FilePickerCloudHelper;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$000(Lcom/htc/app/FilePickerCore;)Z

    move-result v3

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/app/FilePickerCloudHelper;-><init>(Landroid/content/Context;ZLcom/htc/app/FilePickerUtil;)V

    #setter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$102(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerCloudHelper;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper;->isCloudHelperEnabled()Z

    move-result v1

    #setter for: Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$002(Lcom/htc/app/FilePickerCore;Z)Z

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->initialSharedPreferences()V
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$400(Lcom/htc/app/FilePickerCore;)V

    .line 464
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$000(Lcom/htc/app/FilePickerCore;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->checkCloudServiceEnabledFromIntentRequest()Z
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$500(Lcom/htc/app/FilePickerCore;)Z

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->initialSettings()V
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$600(Lcom/htc/app/FilePickerCore;)V

    .line 472
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$1;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v1, 0x5

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    .line 473
    return-void
.end method
