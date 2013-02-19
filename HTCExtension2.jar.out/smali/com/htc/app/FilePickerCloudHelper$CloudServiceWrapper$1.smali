.class Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->sign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->access$500(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v0

    .line 367
    .local v0, cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudService;->signin()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->access$600(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign(): mCloudService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
