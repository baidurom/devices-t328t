.class Lcom/htc/opensense/social/SocialManager$1;
.super Lcom/htc/opensense/social/SocialManager$BaseFutureTask;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/SocialManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/SocialManager$BaseFutureTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/social/SocialManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$features:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    .local p3, x1:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$1;->this$0:Lcom/htc/opensense/social/SocialManager;

    iput-object p4, p0, Lcom/htc/opensense/social/SocialManager$1;->val$account:Landroid/accounts/Account;

    iput-object p5, p0, Lcom/htc/opensense/social/SocialManager$1;->val$features:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    new-instance v0, Lcom/htc/opensense/social/PluginException;

    const-string v1, "no result in response"

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/PluginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/SocialManager$1;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$1;->this$0:Lcom/htc/opensense/social/SocialManager;

    #getter for: Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;
    invoke-static {v0}, Lcom/htc/opensense/social/SocialManager;->access$000(Lcom/htc/opensense/social/SocialManager;)Lcom/htc/opensense/social/ISocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mResponse:Lcom/htc/opensense/social/ISocialManagerResponse;

    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager$1;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/htc/opensense/social/SocialManager$1;->val$features:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialManager;->hasFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 321
    return-void
.end method
