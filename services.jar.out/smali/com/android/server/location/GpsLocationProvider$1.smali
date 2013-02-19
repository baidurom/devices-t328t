.class Lcom/android/server/location/GpsLocationProvider$1;
.super Landroid/location/IGpsStatusProvider$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 8
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener is null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 310
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 311
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 312
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 315
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 316
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 317
    .local v4, test:Lcom/android/server/location/GpsLocationProvider$Listener;
    iget-object v5, v4, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    monitor-exit v6

    .line 346
    .end local v4           #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :goto_1
    return-void

    .line 315
    .restart local v4       #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v4           #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_2
    new-instance v2, Lcom/android/server/location/GpsLocationProvider$Listener;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {v2, v5, p1}, Lcom/android/server/location/GpsLocationProvider$Listener;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/location/IGpsStatusListener;)V

    .line 326
    .local v2, l:Lcom/android/server/location/GpsLocationProvider$Listener;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 330
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$102(Z)Z

    .line 332
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 342
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    monitor-exit v6

    goto :goto_1

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 337
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v1       #i:I
    .restart local v2       #l:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v3       #size:I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "listener is null in removeGpsStatusListener"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 353
    :cond_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 354
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 355
    .local v0, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 356
    .local v2, l:Lcom/android/server/location/GpsLocationProvider$Listener;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 360
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 361
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 362
    .local v5, test:Lcom/android/server/location/GpsLocationProvider$Listener;
    iget-object v6, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 363
    move-object v2, v5

    .line 360
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v5           #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_2
    if-eqz v2, :cond_4

    .line 371
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :try_start_1
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 374
    .local v4, sizeAllow:I
    if-lez v4, :cond_3

    .line 376
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 380
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 396
    .end local v4           #sizeAllow:I
    :cond_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    return-void

    .line 387
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 396
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method
