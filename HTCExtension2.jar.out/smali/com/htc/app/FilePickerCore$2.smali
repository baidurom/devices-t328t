.class Lcom/htc/app/FilePickerCore$2;
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
    .line 645
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 649
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 650
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->dismissDropDown()V

    .line 651
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 652
    .local v1, dataSourceType:I
    const/4 v3, 0x0

    .line 653
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    .line 655
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    #calls: Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-static {v4, v1, v5}, Lcom/htc/app/FilePickerCore;->access$900(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    .line 659
    :goto_0
    const/4 v2, 0x0

    .line 660
    .local v2, isLoadUpFolders:Z
    if-eqz v3, :cond_1

    .line 661
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadUpFolders()Z
    invoke-static {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Z

    move-result v2

    .line 662
    :cond_1
    if-nez v2, :cond_2

    .line 663
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->showLandingPage()V
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$1100(Lcom/htc/app/FilePickerCore;)V

    .line 664
    :cond_2
    return-void

    .line 657
    .end local v2           #isLoadUpFolders:Z
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v5, 0x0

    #calls: Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-static {v4, v1, v5}, Lcom/htc/app/FilePickerCore;->access$900(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    goto :goto_0
.end method
