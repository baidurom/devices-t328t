.class Lcom/htc/app/FilePickerCore$36;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
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
    .line 4395
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$36;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4397
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$36;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getCloudExceptionType()I

    move-result v0

    .line 4398
    .local v0, cloudExceptionType:I
    const v1, 0x20403e8

    .line 4400
    .local v1, strId:I
    packed-switch v0, :pswitch_data_0

    .line 4425
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$36;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4426
    return-void

    .line 4403
    :pswitch_1
    const v1, 0x20403e7

    .line 4404
    goto :goto_0

    .line 4406
    :pswitch_2
    const v1, 0x20403e8

    .line 4407
    goto :goto_0

    .line 4409
    :pswitch_3
    const v1, 0x20403e9

    .line 4410
    goto :goto_0

    .line 4412
    :pswitch_4
    const v1, 0x20403ea

    .line 4413
    goto :goto_0

    .line 4415
    :pswitch_5
    const v1, 0x20403eb

    .line 4416
    goto :goto_0

    .line 4418
    :pswitch_6
    const v1, 0x20403ec

    .line 4419
    goto :goto_0

    .line 4421
    :pswitch_7
    const v1, 0x20403ed

    goto :goto_0

    .line 4400
    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
