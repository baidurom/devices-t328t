.class Lcom/android/server/DropBoxManagerService$3;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;->sendBroadcast(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;

.field final synthetic val$dropboxIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$3;->val$dropboxIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    #getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$3;->val$dropboxIntent:Landroid/content/Intent;

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 254
    return-void
.end method
