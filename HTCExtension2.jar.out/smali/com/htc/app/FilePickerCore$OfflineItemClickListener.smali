.class Lcom/htc/app/FilePickerCore$OfflineItemClickListener;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfflineItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 2699
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v3, 0x0

    .line 2706
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v2, v2, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 2708
    .local v1, tab_string:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->loadLocalDataSourceTypePreferences()I
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4600(Lcom/htc/app/FilePickerCore;)I

    move-result v0

    .line 2709
    .local v0, dataSourceType:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/htc/app/FilePickerCore;->access$4702(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)Ljava/lang/String;

    .line 2710
    const-string v2, "Tab_Recent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2711
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore;->access$4802(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2716
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2717
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchLocalPicker()V
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)V

    .line 2738
    :cond_0
    :goto_0
    return-void

    .line 2719
    :cond_1
    const-string v2, "Tab_Favorites"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2720
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore;->access$4802(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2725
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2726
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchLocalPicker()V
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)V

    goto :goto_0

    .line 2728
    :cond_2
    const-string v2, "Tab_Type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2729
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v3, 0x1

    #setter for: Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerCore;->access$4802(Lcom/htc/app/FilePickerCore;Z)Z

    .line 2730
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2734
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2735
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchLocalPicker()V
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)V

    goto :goto_0
.end method
