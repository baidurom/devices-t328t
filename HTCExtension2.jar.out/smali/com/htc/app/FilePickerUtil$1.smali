.class Lcom/htc/app/FilePickerUtil$1;
.super Ljava/lang/Object;
.source "FilePickerUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerUtil;->getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerUtil;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil$1;->this$0:Lcom/htc/app/FilePickerUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil$1;->this$0:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->cancelDownloadDialog()V

    .line 345
    return-void
.end method
