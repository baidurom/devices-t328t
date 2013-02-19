.class Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;
.super Ljava/lang/Object;
.source "FilePickerRecentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUiRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerRecentFragment;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerRecentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerRecentFragment;Lcom/htc/app/FilePickerRecentFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;-><init>(Lcom/htc/app/FilePickerRecentFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, isRecentStopScan:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$800(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$800(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->isRecentStopScan()Z

    move-result v0

    .line 234
    :cond_0
    if-eqz v0, :cond_2

    .line 235
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    const/4 v2, 0x0

    #calls: Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnRecentViewHeader(Z)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerRecentFragment;->access$200(Lcom/htc/app/FilePickerRecentFragment;Z)V

    .line 236
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #calls: Lcom/htc/app/FilePickerRecentFragment;->updateCountOfRecentListViewHeader()V
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$300(Lcom/htc/app/FilePickerRecentFragment;)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    const/4 v2, 0x1

    #calls: Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnRecentViewHeader(Z)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerRecentFragment;->access$200(Lcom/htc/app/FilePickerRecentFragment;Z)V

    .line 239
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$1000(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerRecentFragment$H;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;
    invoke-static {v1}, Lcom/htc/app/FilePickerRecentFragment;->access$1000(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerRecentFragment$H;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerRecentFragment;

    #getter for: Lcom/htc/app/FilePickerRecentFragment;->updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;
    invoke-static {v2}, Lcom/htc/app/FilePickerRecentFragment;->access$1100(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/app/FilePickerRecentFragment$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
