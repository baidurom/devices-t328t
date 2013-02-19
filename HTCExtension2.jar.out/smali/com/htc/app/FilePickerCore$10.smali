.class Lcom/htc/app/FilePickerCore$10;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->doScanFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;

.field final synthetic val$fileScannerOfFavorites:Lcom/htc/app/FileScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3179
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$10;->this$0:Lcom/htc/app/FilePickerCore;

    iput-object p2, p0, Lcom/htc/app/FilePickerCore$10;->val$fileScannerOfFavorites:Lcom/htc/app/FileScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3182
    const-string v0, "FilePickerWithDB"

    const-string v1, "#### scanFilesByFavorite on doScanFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$10;->val$fileScannerOfFavorites:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->scanFilesByFavorite()V

    .line 3184
    return-void
.end method
