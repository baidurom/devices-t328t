.class Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Landroid/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "response"
    .parameter "type"
    .parameter "features"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1277
    iput-object p1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Landroid/accounts/AccountManagerService;

    .line 1278
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$Session;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    .line 1272
    iput-object v6, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 1273
    iput-object v6, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 1274
    iput v4, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1280
    iput-object p4, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 1281
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 5

    .prologue
    .line 1295
    iget v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iget-object v3, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1296
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1301
    .local v0, accountAuthenticator:Landroid/accounts/IAccountAuthenticator;
    if-nez v0, :cond_2

    .line 1306
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1313
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v3, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x1

    const-string/jumbo v3, "remote exception"

    invoke-virtual {p0, v2, v3}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1320
    iget v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    .line 1321
    if-nez p1, :cond_0

    .line 1322
    const/4 v0, 0x5

    const-string/jumbo v1, "null bundle"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 1330
    :goto_0
    return-void

    .line 1325
    :cond_0
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    :cond_1
    iget v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1329
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    goto :goto_0
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$400(Landroid/accounts/AccountManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1285
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v2, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 1286
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 1289
    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 1291
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 1292
    return-void

    .line 1286
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendResult()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 1333
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1342
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .line 1343
    .local v4, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v4, :cond_2

    .line 1345
    :try_start_0
    iget-object v6, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/accounts/Account;

    .line 1346
    .local v0, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 1347
    iget-object v6, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    aput-object v6, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1334
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v3           #i:I
    .end local v4           #response:Landroid/accounts/IAccountManagerResponse;
    :cond_0
    const-string v6, "AccountManagerService"

    const-string v7, "call getResponseAndClose() in sendResult() at GetAccountsByTypeAndFeatureSession"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "Not True Exception just for Account Test"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v2, here:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1338
    const-string v6, "AccountManagerService"

    const-string/jumbo v7, "push call stack"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1349
    .end local v2           #here:Ljava/lang/RuntimeException;
    .restart local v0       #accounts:[Landroid/accounts/Account;
    .restart local v3       #i:I
    .restart local v4       #response:Landroid/accounts/IAccountManagerResponse;
    :cond_1
    :try_start_1
    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1353
    :goto_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1354
    .local v5, result:Landroid/os/Bundle;
    const-string v6, "accounts"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1355
    invoke-interface {v4, v5}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    .line 1363
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v3           #i:I
    .end local v5           #result:Landroid/os/Bundle;
    :cond_2
    :goto_3
    return-void

    .line 1350
    .restart local v0       #accounts:[Landroid/accounts/Account;
    .restart local v3       #i:I
    :cond_3
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calling onResult() on response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1356
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v3           #i:I
    :catch_0
    move-exception v1

    .line 1358
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1359
    const-string v6, "AccountManagerService"

    const-string v7, "failure while notifying response"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .parameter "now"

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAccountsByTypeAndFeatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ","

    iget-object v2, p0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
