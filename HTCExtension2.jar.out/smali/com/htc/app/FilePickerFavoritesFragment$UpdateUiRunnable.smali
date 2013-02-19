.class Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;
.super Ljava/lang/Object;
.source "FilePickerFavoritesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUiRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerFavoritesFragment;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerFavoritesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerFavoritesFragment;Lcom/htc/app/FilePickerFavoritesFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;-><init>(Lcom/htc/app/FilePickerFavoritesFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, isFavoriteStopScan:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$700(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$700(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->isFavoriteStopScan()Z

    move-result v0

    .line 221
    :cond_0
    if-eqz v0, :cond_2

    .line 222
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    const/4 v2, 0x0

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnFavoriteViewHeader(Z)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerFavoritesFragment;->access$200(Lcom/htc/app/FilePickerFavoritesFragment;Z)V

    .line 223
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->updateCountOfFavoritesListViewHeader()V
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$300(Lcom/htc/app/FilePickerFavoritesFragment;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    const/4 v2, 0x1

    #calls: Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnFavoriteViewHeader(Z)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerFavoritesFragment;->access$200(Lcom/htc/app/FilePickerFavoritesFragment;Z)V

    .line 226
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$900(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerFavoritesFragment$H;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;
    invoke-static {v1}, Lcom/htc/app/FilePickerFavoritesFragment;->access$900(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerFavoritesFragment$H;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerFavoritesFragment;

    #getter for: Lcom/htc/app/FilePickerFavoritesFragment;->updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;
    invoke-static {v2}, Lcom/htc/app/FilePickerFavoritesFragment;->access$1000(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/app/FilePickerFavoritesFragment$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
