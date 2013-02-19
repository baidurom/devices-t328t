.class Lcom/htc/opensense/social/SocialManager$BaseFutureTask$1;
.super Ljava/lang/Object;
.source "SocialManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/SocialManager$BaseFutureTask;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/htc/opensense/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/SocialManager;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$1;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask.1;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$1;->val$this$0:Lcom/htc/opensense/social/SocialManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 477
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$1;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask.1;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
