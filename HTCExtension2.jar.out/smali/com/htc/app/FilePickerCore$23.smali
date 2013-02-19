.class Lcom/htc/app/FilePickerCore$23;
.super Landroid/os/Handler;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;
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
    .line 4137
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$23;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 4140
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$23;->this$0:Lcom/htc/app/FilePickerCore;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    .line 4141
    return-void
.end method
