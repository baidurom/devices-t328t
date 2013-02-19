.class Lcom/htc/opensense/social/SocialManager$2;
.super Lcom/htc/opensense/social/SocialManager$BaseFutureTask;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/SocialManager;->getAccountsByFeatures([Ljava/lang/String;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/SocialManager$BaseFutureTask",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/social/SocialManager;

.field final synthetic val$features:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 337
    .local p3, x1:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<[Landroid/accounts/Account;>;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$2;->this$0:Lcom/htc/opensense/social/SocialManager;

    iput-object p4, p0, Lcom/htc/opensense/social/SocialManager$2;->val$features:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/SocialManager$2;->bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;
    .locals 6
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 347
    if-eqz p1, :cond_0

    const-string v4, "accounts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 348
    :cond_0
    new-instance v4, Lcom/htc/opensense/social/PluginException;

    const-string v5, "no result in response"

    invoke-direct {v4, v5}, Lcom/htc/opensense/social/PluginException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_1
    const-string v4, "accounts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 352
    .local v2, parcelables:[Landroid/os/Parcelable;
    array-length v3, v2

    .line 353
    .local v3, size:I
    new-array v0, v3, [Landroid/accounts/Account;

    .line 354
    .local v0, descs:[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 355
    aget-object v4, v2, v1

    check-cast v4, Landroid/accounts/Account;

    aput-object v4, v0, v1

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_2
    return-object v0
.end method

.method public doWork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$2;->this$0:Lcom/htc/opensense/social/SocialManager;

    #getter for: Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;
    invoke-static {v0}, Lcom/htc/opensense/social/SocialManager;->access$000(Lcom/htc/opensense/social/SocialManager;)Lcom/htc/opensense/social/ISocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mResponse:Lcom/htc/opensense/social/ISocialManagerResponse;

    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager$2;->val$features:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialManager;->getAccountsByFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;[Ljava/lang/String;)V

    .line 342
    return-void
.end method
