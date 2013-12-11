.class public Lcom/htc/opensense/cache/CacheManager$ImageCallable;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/htc/opensense/cache/CacheManager$Info;",
        ">;"
    }
.end annotation


# instance fields
.field mAuthHeader:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field saveToLocal:Z

.field final synthetic this$0:Lcom/htc/opensense/cache/CacheManager;

.field url_hash:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 1035
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/cache/CacheManager$ImageCallable;-><init>(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "url"
    .parameter "auth_header"

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->mAuthHeader:Ljava/lang/String;

    .line 1043
    iput-object p2, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->mUrl:Ljava/lang/String;

    .line 1044
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->url_hash:I

    .line 1045
    const-string v0, "cache_to_provider"

    iget-object v1, p1, Lcom/htc/opensense/cache/CacheManager;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->saveToLocal:Z

    .line 1046
    iput-object p3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->mAuthHeader:Ljava/lang/String;

    .line 1047
    return-void

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call()Lcom/htc/opensense/cache/CacheManager$Info;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1054
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1056
    const/4 v1, 0x0

    .line 1057
    .local v1, info:Lcom/htc/opensense/cache/CacheManager$Info;
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    monitor-enter v4

    .line 1058
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget v5, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->url_hash:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1059
    new-instance v2, Lcom/htc/opensense/cache/CacheManager$Info;

    invoke-direct {v2}, Lcom/htc/opensense/cache/CacheManager$Info;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    .end local v1           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    .local v2, info:Lcom/htc/opensense/cache/CacheManager$Info;
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    .line 1061
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 1086
    .end local v2           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :goto_0
    return-object v2

    .line 1063
    .restart local v1       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    #getter for: Lcom/htc/opensense/cache/CacheManager;->sPoolUrls:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/htc/opensense/cache/CacheManager;->access$600(Lcom/htc/opensense/cache/CacheManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget v5, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->url_hash:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->url_hash:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v4, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->url_hash:I

    #calls: Lcom/htc/opensense/cache/CacheManager;->getInfo(I)Lcom/htc/opensense/cache/CacheManager$Info;
    invoke-static {v3, v4}, Lcom/htc/opensense/cache/CacheManager;->access$300(Lcom/htc/opensense/cache/CacheManager;I)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v1

    .line 1068
    iget v3, v1, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-nez v3, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v4, v1, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/cache/CacheManager;->deleteFromDb(Ljava/lang/String;)V

    .line 1071
    iput v8, v1, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    .line 1074
    :cond_1
    iget v3, v1, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v3, v8, :cond_2

    .line 1075
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget v4, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->url_hash:I

    iget-object v5, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/cache/CacheManager;->insertToDb(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    .line 1076
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v4, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->mAuthHeader:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->mUrl:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->saveToLocal:Z

    #calls: Lcom/htc/opensense/cache/CacheManager;->getRemoteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;
    invoke-static {v3, v4, v5, v6}, Lcom/htc/opensense/cache/CacheManager;->access$900(Lcom/htc/opensense/cache/CacheManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/opensense/cache/CacheManager$FileInfo;

    move-result-object v0

    .line 1077
    .local v0, file:Lcom/htc/opensense/cache/CacheManager$FileInfo;
    iget-object v3, v0, Lcom/htc/opensense/cache/CacheManager$FileInfo;->uri:Landroid/net/Uri;

    iput-object v3, v1, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    .line 1078
    iput v7, v1, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    .line 1079
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update to db, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v3, p0, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->this$0:Lcom/htc/opensense/cache/CacheManager;

    iget-object v4, v1, Lcom/htc/opensense/cache/CacheManager$Info;->id:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "content_uri"

    aput-object v6, v5, v9

    iget-object v6, v1, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "status"

    aput-object v6, v5, v8

    const/4 v6, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "file_size"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, v0, Lcom/htc/opensense/cache/CacheManager$FileInfo;->size:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/cache/CacheManager;->updateToDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #file:Lcom/htc/opensense/cache/CacheManager$FileInfo;
    :cond_2
    move-object v2, v1

    .line 1086
    .local v2, info:Ljava/lang/Object;
    goto/16 :goto_0

    .line 1065
    .end local v2           #info:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    .local v2, info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    .restart local v1       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/htc/opensense/cache/CacheManager$ImageCallable;->call()Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v0

    return-object v0
.end method
