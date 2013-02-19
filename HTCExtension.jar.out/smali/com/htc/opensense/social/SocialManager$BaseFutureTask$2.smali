.class Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;
.super Ljava/lang/Object;
.source "SocialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask.2;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask.2;"
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    iget-object v0, v0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mCallback:Lcom/htc/opensense/social/SocialManagerCallback;

    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/SocialManagerCallback;->run(Lcom/htc/opensense/social/SocialManagerFuture;)V

    .line 540
    return-void
.end method
