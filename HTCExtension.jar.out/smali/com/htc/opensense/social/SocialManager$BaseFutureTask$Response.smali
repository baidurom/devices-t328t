.class public Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;
.super Lcom/htc/opensense/social/ISocialManagerResponse$Stub;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/SocialManager$BaseFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>.Response;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    invoke-direct {p0}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>.Response;"
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->cancel(Z)Z

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    iget-object v1, v1, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->this$0:Lcom/htc/opensense/social/SocialManager;

    #calls: Lcom/htc/opensense/social/SocialManager;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    invoke-static {v1, p1, p2}, Lcom/htc/opensense/social/SocialManager;->access$400(Lcom/htc/opensense/social/SocialManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    #calls: Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->access$500(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>.Response;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    .line 610
    .local v0, result:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    .line 621
    .end local v0           #result:Ljava/lang/Object;,"TT;"
    :goto_0
    return-void

    .line 613
    .restart local v0       #result:Ljava/lang/Object;,"TT;"
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->this$1:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;

    #calls: Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->set(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->access$300(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/opensense/social/PluginException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 615
    .end local v0           #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v1

    .line 620
    :goto_1
    const/4 v1, 0x5

    const-string v2, "no result in response"

    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 617
    :catch_1
    move-exception v1

    goto :goto_1
.end method
