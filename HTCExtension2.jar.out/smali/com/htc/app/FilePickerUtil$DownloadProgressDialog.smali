.class Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "FilePickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerUtil;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerUtil;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;->this$0:Lcom/htc/app/FilePickerUtil;

    .line 1586
    invoke-direct {p0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1587
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;->this$0:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->cancelDownloadDialog()V

    .line 1592
    invoke-super {p0}, Lcom/htc/app/HtcProgressDialog;->onBackPressed()V

    .line 1593
    return-void
.end method
