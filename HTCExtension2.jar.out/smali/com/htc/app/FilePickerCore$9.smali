.class Lcom/htc/app/FilePickerCore$9;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;

.field final synthetic val$fileScanner:Lcom/htc/app/FileScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2387
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$9;->this$0:Lcom/htc/app/FilePickerCore;

    iput-object p2, p0, Lcom/htc/app/FilePickerCore$9;->val$fileScanner:Lcom/htc/app/FileScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2390
    const-string v0, "FilePickerWithDB"

    const-string v1, "#### scanFilesByFavorite"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$9;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$9;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->NotifyToDoTask(I)V

    .line 2395
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$9;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->NotifyToDoTask(I)V

    .line 2398
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$9;->val$fileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->scanFilesByFavorite()V

    .line 2399
    return-void
.end method
