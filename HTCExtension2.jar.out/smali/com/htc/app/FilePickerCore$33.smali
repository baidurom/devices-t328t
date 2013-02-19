.class Lcom/htc/app/FilePickerCore$33;
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
    .line 4328
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$33;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$33;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4331
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$33;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$5900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 4332
    :cond_0
    return-void
.end method
