.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 404
    const/4 v2, 0x0

    .line 406
    .local v2, success:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v1

    .line 407
    .local v1, formatResult:I
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V
    invoke-static {v3, v4, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    const/4 v2, 0x1

    .line 415
    .end local v1           #formatResult:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 417
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 488
    :goto_1
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v4, 0x1040470

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 425
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 431
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    :goto_2
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V
    invoke-static {v3, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V

    goto :goto_1

    .line 432
    :catch_1
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 443
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 455
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 461
    :cond_5
    if-eqz v2, :cond_6

    .line 462
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 463
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 471
    :cond_6
    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 472
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 482
    :goto_3
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 483
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V
    invoke-static {v3, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V

    goto/16 :goto_1

    .line 475
    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 476
    :catch_2
    move-exception v0

    .line 477
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 487
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1
.end method
