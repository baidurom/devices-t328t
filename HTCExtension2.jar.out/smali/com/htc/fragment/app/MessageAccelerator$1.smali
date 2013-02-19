.class Lcom/htc/fragment/app/MessageAccelerator$1;
.super Ljava/lang/Object;
.source "MessageAccelerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/app/MessageAccelerator;->accelerate(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/app/MessageAccelerator;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/htc/fragment/app/MessageAccelerator;JLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->this$0:Lcom/htc/fragment/app/MessageAccelerator;

    iput-wide p2, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->val$now:J

    iput-object p4, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->this$0:Lcom/htc/fragment/app/MessageAccelerator;

    iget-wide v1, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->val$now:J

    iget-object v3, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->this$0:Lcom/htc/fragment/app/MessageAccelerator;

    #getter for: Lcom/htc/fragment/app/MessageAccelerator;->timeout:J
    invoke-static {v3}, Lcom/htc/fragment/app/MessageAccelerator;->access$100(Lcom/htc/fragment/app/MessageAccelerator;)J

    move-result-wide v3

    add-long/2addr v1, v3

    #setter for: Lcom/htc/fragment/app/MessageAccelerator;->expressNo:J
    invoke-static {v0, v1, v2}, Lcom/htc/fragment/app/MessageAccelerator;->access$002(Lcom/htc/fragment/app/MessageAccelerator;J)J

    .line 80
    iget-object v0, p0, Lcom/htc/fragment/app/MessageAccelerator$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    return-void
.end method
