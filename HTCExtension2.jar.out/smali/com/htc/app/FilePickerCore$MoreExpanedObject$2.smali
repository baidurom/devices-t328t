.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;
.super Landroid/os/Handler;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 0
    .parameter

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1661
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1667
    :goto_0
    return-void

    .line 1663
    :pswitch_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$3500(Lcom/htc/app/FilePickerCore;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$2;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->scanEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1661
    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_0
    .end packed-switch
.end method
