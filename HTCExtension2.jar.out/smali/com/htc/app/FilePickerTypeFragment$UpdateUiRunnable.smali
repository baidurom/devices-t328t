.class Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUiRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerTypeFragment;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerTypeFragment;Lcom/htc/app/FilePickerTypeFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, isTypeViewStopScan:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->isTypeStopScan()Z

    move-result v0

    .line 309
    :cond_0
    if-eqz v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    const/4 v2, 0x0

    #calls: Lcom/htc/app/FilePickerTypeFragment;->showRefreshAnimationOnTypeViewHeader(Z)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerTypeFragment;->access$800(Lcom/htc/app/FilePickerTypeFragment;Z)V

    .line 311
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #calls: Lcom/htc/app/FilePickerTypeFragment;->updateCountOfTypeListViewHeader()V
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$100(Lcom/htc/app/FilePickerTypeFragment;)V

    .line 317
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    const/4 v2, 0x1

    #calls: Lcom/htc/app/FilePickerTypeFragment;->showRefreshAnimationOnTypeViewHeader(Z)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerTypeFragment;->access$800(Lcom/htc/app/FilePickerTypeFragment;Z)V

    .line 314
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$1000(Lcom/htc/app/FilePickerTypeFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;
    invoke-static {v2}, Lcom/htc/app/FilePickerTypeFragment;->access$900(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
