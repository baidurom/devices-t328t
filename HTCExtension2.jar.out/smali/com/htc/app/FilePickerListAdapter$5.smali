.class Lcom/htc/app/FilePickerListAdapter$5;
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
    .line 1216
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mItemsMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$1000(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$5;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
