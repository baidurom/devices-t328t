.class Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "FilePickerTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/htc/app/FilePickerTypeFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    .line 261
    invoke-virtual {p1}, Lcom/htc/app/FilePickerTypeFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->mRetryCount:I

    .line 263
    return-void
.end method

.method static synthetic access$608(Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 257
    iget v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->mRetryCount:I

    return v0
.end method

.method private reLaunchIME()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerTypeFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;-><init>(Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->reLaunchIME()V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$700(Lcom/htc/app/FilePickerTypeFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retry to launch IME over 5 times, give up..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->mRetryCount:I

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
