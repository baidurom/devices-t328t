.class Lcom/htc/app/FilePickerCore$6;
.super Ljava/lang/Thread;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$6;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method
