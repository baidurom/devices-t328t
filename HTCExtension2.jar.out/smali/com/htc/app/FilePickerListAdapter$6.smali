.class Lcom/htc/app/FilePickerListAdapter$6;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1243
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$700(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v3

    .line 1244
    .local v3, searchResultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    if-eqz v3, :cond_1

    .line 1245
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$1100(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1246
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #calls: Lcom/htc/app/FilePickerListAdapter;->removeRedundantPath(Ljava/util/List;)Ljava/util/List;
    invoke-static {v4, v3}, Lcom/htc/app/FilePickerListAdapter;->access$1200(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1248
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    new-array v4, v6, [Lcom/htc/app/ItemInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/app/ItemInfo;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v5, v4}, Lcom/htc/app/FilePickerListAdapter;->access$502(Lcom/htc/app/FilePickerListAdapter;[Lcom/htc/app/ItemInfo;)[Lcom/htc/app/ItemInfo;

    .line 1249
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1250
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_3

    .line 1251
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 1257
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$900(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FileScanner;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1258
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$900(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FileScanner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FileScanner;->isStopScan()Z

    move-result v2

    .line 1259
    .local v2, isStop:Z
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1260
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v1

    .line 1262
    .local v1, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 1264
    .local v0, bExternalStorageAvailable:Z
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 1265
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerCore;->setNoFileFoundTextOfTypeView()V

    .line 1274
    :goto_1
    const-string v4, "Tab_Type"

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerListAdapter;->access$1300(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1275
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    const v5, 0x20200cc

    invoke-virtual {v4, v5, v6}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    .line 1286
    .end local v0           #bExternalStorageAvailable:Z
    .end local v1           #bInternalStorageAvailable:Z
    .end local v2           #isStop:Z
    :cond_2
    :goto_2
    return-void

    .line 1253
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 1267
    .restart local v0       #bExternalStorageAvailable:Z
    .restart local v1       #bInternalStorageAvailable:Z
    .restart local v2       #isStop:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_5

    .line 1268
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerCore;->setNoFileViewEmptyTextOfTypeView()V

    goto :goto_1

    .line 1270
    :cond_5
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerCore;->setNoFileFoundTextOfTypeView()V

    goto :goto_1

    .line 1277
    :cond_6
    const-string v4, "Tab_Recent"

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerListAdapter;->access$1300(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1278
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    const v5, 0x20200ca

    invoke-virtual {v4, v5, v6}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    goto :goto_2

    .line 1280
    :cond_7
    const-string v4, "Tab_Favorites"

    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerListAdapter;->access$1300(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1281
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter$6;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerCore;
    invoke-static {v4}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerCore;

    move-result-object v4

    const v5, 0x20200a9

    invoke-virtual {v4, v5, v6}, Lcom/htc/app/FilePickerCore;->setListViewHeaderAnimationEnabled(IZ)V

    goto :goto_2
.end method
