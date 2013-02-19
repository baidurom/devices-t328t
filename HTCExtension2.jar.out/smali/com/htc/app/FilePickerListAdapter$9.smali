.class Lcom/htc/app/FilePickerListAdapter$9;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V
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
    .line 1390
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$9;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$9;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$800(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$9;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$800(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 1395
    :cond_0
    const-string v0, "Tab_Type"

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$9;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterType:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$1300(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$9;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 1397
    :cond_1
    return-void
.end method
