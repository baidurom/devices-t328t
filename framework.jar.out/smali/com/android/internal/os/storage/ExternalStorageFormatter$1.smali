.class Lcom/android/internal/os/storage/ExternalStorageFormatter$1;
.super Landroid/os/Handler;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 102
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_CHECK_MOUNT_OK which="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 108
    .local v2, whichStorage:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 110
    .local v1, timeoutCnt:I
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->checkStorageMounted(I)Z

    move-result v3

    if-eq v3, v6, :cond_1

    const/16 v3, 0x64

    if-le v1, v3, :cond_5

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mountStorage(I)V

    .line 115
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 121
    :cond_3
    if-ne v2, v6, :cond_4

    .line 122
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "MSG_CHECK_MOUNT_OK updateProgressState"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mountStorage(I)V

    .line 130
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0

    .line 135
    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const v4, 0x15667

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, checkMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x15667
        :pswitch_0
    .end packed-switch
.end method
