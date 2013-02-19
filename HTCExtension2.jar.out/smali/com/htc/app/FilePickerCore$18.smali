.class Lcom/htc/app/FilePickerCore$18;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->createFolderPathReturnDialog()Landroid/app/Dialog;
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
    .line 3722
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$18;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3724
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3725
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$18;->this$0:Lcom/htc/app/FilePickerCore;

    const/16 v1, 0xb

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    .line 3726
    return-void
.end method
