.class public Lcom/htc/socialnetwork/SocialNetworkDataHelper;
.super Ljava/lang/Object;
.source "SocialNetworkDataHelper.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetworkDataHelper"

.field public static final RAW_QUERY_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://com.htc.socialnetwork.snprovider/joins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.htc.socialnetwork.snprovider/rawquerys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->RAW_QUERY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/socialnetwork/SocialNetworkClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private updateEventValues(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentValues;
    .locals 10
    .parameter "uid"
    .parameter "event"
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7df

    .line 1563
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1564
    :cond_0
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at insertEvent. uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1567
    :cond_1
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1568
    .local v2, event_id:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1569
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1570
    .local v4, start_time:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1571
    .local v1, end_time:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v1, :cond_3

    .line 1573
    :cond_2
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at insertEvent. event id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , start time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , end time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1578
    :cond_3
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1579
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v6, "description"

    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v7, "creator"

    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getCreator()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, ""

    :goto_0
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v6, "start_time"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string v6, "end_time"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v6, "update_time"

    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getUpdateTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1586
    const-string v6, "last_check_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1588
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v6, "event_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v6, "uid"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v6, "is_read"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    return-object v5

    .line 1581
    :cond_4
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getCreator()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 1595
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1598
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v0

    .line 1599
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e4

    invoke-direct {v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public batchInsert(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1257
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1260
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1261
    .local v0, e:Landroid/content/OperationApplicationException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cleanFriendInvite(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2391
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2393
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2400
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2397
    :catch_0
    move-exception v0

    .line 2398
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2400
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanGroupInvite(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2410
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2412
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2419
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2419
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanMsgUpdate(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_check_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2428
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2430
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2437
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2434
    :catch_0
    move-exception v0

    .line 2435
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2437
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanPhotoUpdate(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_update_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2447
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2449
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2456
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2453
    :catch_0
    move-exception v0

    .line 2454
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2456
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanProfileUpdate(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_check_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2466
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2468
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2475
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2472
    :catch_0
    move-exception v0

    .line 2473
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2475
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearData()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 876
    const/4 v1, 0x0

    .line 877
    .local v1, res:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    move v5, v3

    :goto_0
    or-int/2addr v1, v5

    .line 880
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    or-int/2addr v1, v5

    .line 881
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    move v5, v3

    :goto_2
    or-int/2addr v1, v5

    .line 882
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    move v5, v3

    :goto_3
    or-int/2addr v1, v5

    .line 883
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    move v5, v3

    :goto_4
    or-int/2addr v1, v5

    .line 884
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    move v5, v3

    :goto_5
    or-int/2addr v1, v5

    .line 885
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    move v5, v3

    :goto_6
    or-int/2addr v1, v5

    .line 886
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    move v5, v3

    :goto_7
    or-int/2addr v1, v5

    .line 887
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    move v5, v3

    :goto_8
    or-int/2addr v1, v5

    .line 888
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_9

    :goto_9
    or-int/2addr v1, v3

    .line 893
    return v1

    :cond_0
    move v5, v4

    .line 879
    goto :goto_0

    :cond_1
    move v5, v4

    .line 880
    goto :goto_1

    :cond_2
    move v5, v4

    .line 881
    goto :goto_2

    :cond_3
    move v5, v4

    .line 882
    goto :goto_3

    :cond_4
    move v5, v4

    .line 883
    goto :goto_4

    :cond_5
    move v5, v4

    .line 884
    goto :goto_5

    :cond_6
    move v5, v4

    .line 885
    goto :goto_6

    :cond_7
    move v5, v4

    .line 886
    goto :goto_7

    :cond_8
    move v5, v4

    .line 887
    goto :goto_8

    :cond_9
    move v3, v4

    .line 888
    goto :goto_9

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3
.end method

.method public deleteAlbum([Ljava/lang/String;)Z
    .locals 13
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1357
    const/4 v8, 0x0

    .line 1358
    .local v8, album_id:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1359
    .local v12, uid:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1360
    .local v7, albumRes:I
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v8, p1, v0

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    aget-object v12, p1, v0

    if-eqz v12, :cond_3

    .line 1362
    const/4 v6, 0x0

    .line 1363
    .local v6, _id:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1365
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1367
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1369
    const/4 v11, 0x1

    .line 1370
    .local v11, res:Z
    if-eqz v9, :cond_1

    .line 1371
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1375
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1376
    if-nez v11, :cond_2

    move v0, v11

    .line 1390
    :goto_1
    return v0

    .line 1374
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1379
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1390
    if-lez v7, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    .line 1384
    .end local v11           #res:Z
    :catch_0
    move-exception v10

    .line 1385
    .local v10, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v10}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1388
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #_id:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "mandatory fields not set at deleteAlbum"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1390
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #_id:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #res:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteAlbums(Ljava/lang/String;)Z
    .locals 6
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1400
    if-nez p1, :cond_0

    .line 1401
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7df

    const-string v5, "user row id not set at deleteAlbums"

    invoke-direct {v3, v4, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1403
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1406
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1413
    if-lez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1413
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteEvents()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1700
    const/4 v1, -0x1

    .line 1702
    .local v1, res:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1703
    .local v2, where:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1704
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1711
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1708
    .end local v2           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1709
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1711
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteEvents(Ljava/lang/String;)Z
    .locals 13
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1532
    if-nez p1, :cond_0

    .line 1533
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "user row id not set at deleteEvents"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1536
    .local v3, where:Ljava/lang/String;
    const/4 v9, -0x1

    .line 1538
    .local v9, res:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1540
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1542
    .local v8, eid:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1543
    .local v10, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1548
    goto :goto_0

    .line 1549
    .end local v8           #eid:Ljava/lang/String;
    .end local v10           #selection:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1550
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1551
    :cond_2
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1558
    if-lez v9, :cond_3

    move v0, v11

    :goto_1
    return v0

    .line 1555
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1556
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    move v0, v12

    .line 1558
    goto :goto_1
.end method

.method public deleteFriend(Ljava/lang/String;)Z
    .locals 4
    .parameter "friendUserId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1181
    if-nez p1, :cond_0

    .line 1182
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    const-string v3, "friend user id not set at deleteFriend"

    invoke-direct {v1, v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserData()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->deleteUser(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1189
    .local v0, res:I
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deletePhotoCaches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "aid"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1445
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1446
    :cond_0
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7df

    const-string v5, "aid and sid not set at deletePhotoCaches"

    invoke-direct {v3, v4, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1449
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1453
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1457
    if-lez v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1457
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deletePhotoUpdate(Ljava/lang/String;)Z
    .locals 6
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2022
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2024
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2030
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2027
    :catch_0
    move-exception v0

    .line 2028
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2030
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected deleteUser(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "user_id"
    .parameter "friendOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1782
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1783
    :cond_0
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7df

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at deleteUser. user_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , service id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1787
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1789
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1790
    .local v3, uid:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1791
    const/4 v0, 0x0

    .line 1805
    :goto_0
    return v0

    .line 1793
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->deleteAlbums(Ljava/lang/String;)Z

    move-result v2

    .line 1796
    .local v2, res:Z
    invoke-virtual {p0, v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->deleteEvents(Ljava/lang/String;)Z

    move-result v2

    .line 1801
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, count:I
    goto :goto_0

    .line 1802
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 1803
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5
.end method

.method public doSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceName"
    .parameter "type"
    .parameter "specificUser"

    .prologue
    .line 2502
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.socialnetwork.action.SYNC_NOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2503
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2504
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SYNC_SERVICE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const-string v2, "SYNC_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2506
    const-string v2, "SYNC_USER"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2511
    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2512
    return-void
.end method

.method public getActiveUserData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "projection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v6, 0x0

    .line 195
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, queryUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "active_account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'Y\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "friend_of"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 0 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v8

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 209
    return-object v6

    .line 206
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 207
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getActiveUserData()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v10, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 158
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "service"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, queryUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.sid = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "active_account"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = \'Y\' AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "friend_of"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 0 AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "service"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "session_token"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IS NOT NULL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/htc/socialnetwork/User;->USER_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    .line 167
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v2

    if-ge v8, v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/htc/socialnetwork/User;->USER_PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const/4 v8, 0x0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 174
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 181
    :cond_1
    if-eqz v6, :cond_2

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_2
    return-object v10

    .line 176
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 177
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v0, v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 178
    :catch_1
    move-exception v9

    .line 179
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7de

    invoke-direct {v0, v4, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getActiveUserId()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v10, 0x0

    .line 117
    .local v10, userId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 119
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 122
    .local v1, queryUri:Landroid/net/Uri;
    const-string v6, "user.user_id"

    .line 123
    .local v6, USERID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "active_account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'Y\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "friend_of"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 0 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user.user_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 132
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "user_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 140
    :cond_0
    if-eqz v7, :cond_1

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    return-object v10

    .line 135
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #USERID:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 136
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 137
    :catch_1
    move-exception v9

    .line 138
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7de

    invoke-direct {v0, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getActiveUserName()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v10, 0x0

    .line 78
    .local v10, username:Ljava/lang/String;
    const/4 v7, 0x0

    .line 81
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, queryUri:Landroid/net/Uri;
    const-string v6, "user.user_name"

    .line 85
    .local v6, USERNAME:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "active_account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'Y\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "friend_of"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 0 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user.user_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 94
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "user_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 102
    :cond_0
    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_1
    return-object v10

    .line 97
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #USERNAME:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 98
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 99
    :catch_1
    move-exception v9

    .line 100
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7de

    invoke-direct {v0, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAlbumData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 588
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 593
    return-object v6

    .line 590
    :catch_0
    move-exception v7

    .line 591
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getAlbumData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 607
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    if-eqz v6, :cond_2

    .line 610
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 612
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 613
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 614
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 617
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 618
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 623
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 622
    :cond_2
    if-eqz v6, :cond_3

    .line 623
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_3
    return-object v10

    .line 619
    :catch_1
    move-exception v9

    .line 620
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAlbumIds(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v8, albumIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 303
    .local v1, queryUri:Landroid/net/Uri;
    const-string v6, "album.album_id"

    .line 304
    .local v6, ALBUMID:Ljava/lang/String;
    const-string v7, "album._id"

    .line 305
    .local v7, _ID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "uid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 311
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album.album_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "album._id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 313
    if-eqz v9, :cond_1

    .line 314
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v10

    .line 317
    .local v10, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v10}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v10           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 322
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 321
    :cond_1
    if-eqz v9, :cond_2

    .line 322
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_2
    return-object v8

    .line 318
    :catch_1
    move-exception v11

    .line 319
    .local v11, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7de

    invoke-direct {v0, v2, v11}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getEventData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 636
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 640
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 642
    if-eqz v6, :cond_2

    .line 643
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 645
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 646
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 647
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 650
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 651
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 655
    :cond_2
    if-eqz v6, :cond_3

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_3
    return-object v10

    .line 652
    :catch_1
    move-exception v9

    .line 653
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getEventMember(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 670
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 674
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 676
    if-eqz v6, :cond_2

    .line 677
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 679
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 680
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 681
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 684
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 685
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 689
    :cond_2
    if-eqz v6, :cond_3

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_3
    return-object v10

    .line 686
    :catch_1
    move-exception v9

    .line 687
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'F\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 510
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 515
    return-object v6

    .line 512
    :catch_0
    move-exception v7

    .line 513
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getFriendData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 554
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 555
    if-eqz v6, :cond_2

    .line 556
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 559
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 560
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 563
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 564
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 568
    :cond_2
    if-eqz v6, :cond_3

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_3
    return-object v10

    .line 565
    :catch_1
    move-exception v9

    .line 566
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendIds(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v8, friendIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'F\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 262
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    if-eqz v6, :cond_1

    .line 266
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v7

    .line 278
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 282
    :cond_1
    if-eqz v6, :cond_2

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_2
    return-object v8

    .line 279
    :catch_1
    move-exception v9

    .line 280
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendInvite(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 711
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 713
    if-eqz v6, :cond_2

    .line 714
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 716
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 717
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 718
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 721
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 722
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 726
    :cond_2
    if-eqz v6, :cond_3

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 729
    :cond_3
    return-object v10

    .line 723
    :catch_1
    move-exception v9

    .line 724
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendInvites(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "uid"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v8, friendInvites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND status = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    :cond_0
    const/4 v6, 0x0

    .line 345
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "from_user_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "from_user_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    if-eqz v6, :cond_2

    .line 350
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v7

    .line 359
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 363
    :cond_2
    if-eqz v6, :cond_3

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_3
    return-object v8

    .line 360
    :catch_1
    move-exception v9

    .line 361
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getGroupInvite(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 748
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 750
    if-eqz v6, :cond_2

    .line 751
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 754
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 755
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 758
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 759
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 763
    :cond_2
    if-eqz v6, :cond_3

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_3
    return-object v10

    .line 760
    :catch_1
    move-exception v9

    .line 761
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getGroupInvites(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "uid"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v8, groupInvites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND status = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    :cond_0
    const/4 v6, 0x0

    .line 384
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "group_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "group_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    if-eqz v6, :cond_2

    .line 389
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v7

    .line 400
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 404
    :cond_2
    if-eqz v6, :cond_3

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_3
    return-object v8

    .line 401
    :catch_1
    move-exception v9

    .line 402
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getInsertEventMemberOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "uid"
    .parameter "member"
    .parameter "eid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1678
    invoke-virtual {p0, p2, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, memberRowId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1680
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1681
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sid"

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    sget-object v2, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sid"

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "eid"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1688
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInsertEventOperation(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "uid"
    .parameter "event"
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1659
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateEventValues(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentValues;

    move-result-object v1

    .line 1661
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 1663
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1664
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7df

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1666
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v0

    .line 1667
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e4

    invoke-direct {v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method public getInsertFriendInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2078
    if-nez p1, :cond_0

    .line 2079
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 2081
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2082
    .local v4, uid:Ljava/lang/String;
    const-string v5, "from_user_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2083
    .local v1, from_user_id:Ljava/lang/String;
    const-string v5, "from_user_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2085
    .local v2, from_user_name:Ljava/lang/String;
    const-string v5, "request_time"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2087
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2089
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertFriendInvite. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , from_user_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , from_user_name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , request_time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 2095
    :cond_2
    :try_start_0
    const-string v5, "status"

    const-string v6, "W"

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const-string v5, "sid"

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    sget-object v5, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 2101
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2102
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInsertFriendOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1051
    if-nez p1, :cond_0

    .line 1052
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1054
    :cond_0
    const-string v0, "active_account"

    const-string v1, "N"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v0, "friend"

    const-string v1, "F"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v0, "selected"

    const-string v1, "Y"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getInsertUserOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getInsertGroupInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2224
    if-nez p1, :cond_0

    .line 2225
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 2227
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2228
    .local v4, uid:Ljava/lang/String;
    const-string v5, "group_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2229
    .local v1, group_id:Ljava/lang/String;
    const-string v5, "group_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2230
    .local v2, group_name:Ljava/lang/String;
    const-string v5, "request_time"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2232
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2234
    :cond_1
    :try_start_0
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7df

    const-string v7, "mandatory fields not set at insertGroupInvite"

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 2236
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    :try_start_1
    const-string v5, "status"

    const-string v6, "W"

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    const-string v5, "sid"

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    sget-object v5, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    return-object v5

    .line 2242
    :catch_1
    move-exception v0

    .line 2243
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInsertOrUpdateAlbumOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 12
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7df

    .line 1275
    if-nez p1, :cond_0

    .line 1276
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1278
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1279
    .local v11, uid:Ljava/lang/String;
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1280
    .local v6, album_id:Ljava/lang/String;
    const-string v0, "album_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1281
    .local v7, album_name:Ljava/lang/String;
    const-string v0, "photo_count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1282
    .local v10, photo_count:Ljava/lang/String;
    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-nez v10, :cond_2

    .line 1284
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v1, "mandatory fields not set at insertAlbum"

    invoke-direct {v0, v2, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1292
    :cond_2
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1293
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    const-string v0, "SocialNetworkDataHelper"

    const-string v1, "insert Album without insert visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_3
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1302
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1303
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1304
    sget-object v0, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1316
    if-eqz v8, :cond_4

    .line 1317
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return-object v0

    .line 1307
    :cond_5
    :try_start_1
    sget-object v0, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1316
    if-eqz v8, :cond_4

    .line 1317
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v9

    .line 1311
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1316
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1317
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1312
    :catch_1
    move-exception v9

    .line 1313
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_3
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInsertOrUpdateMsgUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 11
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    .line 2349
    if-nez p1, :cond_0

    .line 2350
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2352
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2353
    .local v9, type:Ljava/lang/String;
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2354
    .local v10, uid:Ljava/lang/String;
    const-string v0, "count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2355
    .local v6, count:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-nez v6, :cond_2

    .line 2356
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mandatory fields not set at insertMsgUpdate. type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2360
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2363
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2366
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2367
    sget-object v0, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2376
    if-eqz v7, :cond_3

    .line 2377
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    return-object v0

    .line 2371
    :cond_4
    :try_start_3
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    sget-object v0, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 2376
    if-eqz v7, :cond_3

    .line 2377
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2379
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2380
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 2376
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2377
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getInsertPhotoUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1990
    if-nez p1, :cond_0

    .line 1991
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v4

    .line 1993
    :cond_0
    const-string v4, "uid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1994
    .local v3, uid:Ljava/lang/String;
    const-string v4, "photo_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1995
    .local v2, photo_id:Ljava/lang/String;
    const-string v4, "last_update_time"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1997
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1998
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at insertPhotoUpdate. uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,photo_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,last_update_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 2003
    :cond_2
    const-string v4, "is_read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2004
    const-string v4, "sid"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 2010
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2011
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getInsertProfileUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1923
    if-nez p1, :cond_0

    .line 1924
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v4

    .line 1926
    :cond_0
    const-string v4, "uid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1927
    .local v3, uid:Ljava/lang/String;
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1928
    .local v2, type:Ljava/lang/String;
    const-string v4, "last_check_time"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1930
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1931
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at insertProfileUpdate. uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , last_update_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1936
    :cond_2
    const-string v4, "is_read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1937
    const-string v4, "sid"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 1943
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1944
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getInsertUserOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1095
    if-nez p1, :cond_0

    .line 1096
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v5, "values not set at insertUser"

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1099
    :cond_0
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1100
    .local v2, user_id:Ljava/lang/String;
    const-string v4, "user_name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, user_name:Ljava/lang/String;
    const-string v4, "profile_url"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, profile_url:Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 1104
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at insertUser. user_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , serviceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , user_name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , profile_url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1110
    :cond_2
    const-string v4, "sid"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 1116
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1117
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getLastCheckTime(Ljava/lang/String;)J
    .locals 11
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 419
    const-wide/16 v9, 0x0

    .line 420
    .local v9, lastCheckTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 424
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "last_check_time"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 433
    :cond_0
    if-eqz v6, :cond_1

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_1
    return-wide v9

    .line 428
    :catch_0
    move-exception v7

    .line 429
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 430
    :catch_1
    move-exception v8

    .line 431
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getLastCheckTimeOfAlbum(Ljava/lang/String;)J
    .locals 11
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 448
    const-wide/16 v9, 0x0

    .line 449
    .local v9, lastCheckTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 452
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "last_check_time"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 455
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 462
    :cond_0
    if-eqz v6, :cond_1

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_1
    return-wide v9

    .line 457
    :catch_0
    move-exception v7

    .line 458
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 459
    :catch_1
    move-exception v8

    .line 460
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 782
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 784
    if-eqz v6, :cond_2

    .line 785
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 787
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 788
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 789
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 792
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 793
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 798
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 797
    :cond_2
    if-eqz v6, :cond_3

    .line 798
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_3
    return-object v10

    .line 794
    :catch_1
    move-exception v9

    .line 795
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getPhotoCacheData([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "aid"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1424
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1425
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "aid and sid not set at getPhotoCacheData"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1427
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1431
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1436
    return-object v6

    .line 1433
    :catch_0
    move-exception v7

    .line 1434
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getPhotoLastUpdateTime(Ljava/lang/String;)J
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 477
    const-wide/16 v9, 0x0

    .line 478
    .local v9, lastUpdateTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, where:Ljava/lang/String;
    const-string v11, "last_update_time DESC LIMIT 1"

    .line 480
    .local v11, order:Ljava/lang/String;
    const/4 v6, 0x0

    .line 482
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "last_update_time"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "last_update_time DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 484
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 491
    :cond_0
    if-eqz v6, :cond_1

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1
    return-wide v9

    .line 486
    :catch_0
    move-exception v7

    .line 487
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 488
    :catch_1
    move-exception v8

    .line 489
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getPhotoUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 812
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 816
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 818
    if-eqz v6, :cond_2

    .line 819
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 821
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 822
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 823
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 826
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 827
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 832
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 831
    :cond_2
    if-eqz v6, :cond_3

    .line 832
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_3
    return-object v10

    .line 828
    :catch_1
    move-exception v9

    .line 829
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getProfileUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 850
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 852
    if-eqz v6, :cond_2

    .line 853
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 855
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 856
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 857
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 860
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 861
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 866
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 865
    :cond_2
    if-eqz v6, :cond_3

    .line 866
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 868
    :cond_3
    return-object v10

    .line 862
    :catch_1
    move-exception v9

    .line 863
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1813
    const/4 v6, 0x0

    .line 1814
    .local v6, SID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_class = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1816
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1818
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1820
    :cond_0
    if-eqz v7, :cond_1

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 1822
    :catch_0
    move-exception v8

    .line 1824
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "SocialNetworkDataHelper"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1861
    const/4 v9, 0x0

    .line 1862
    .local v9, session_token:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_class = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1863
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1865
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "session_token"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1867
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    const-string v0, "session_token"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1876
    :cond_0
    if-eqz v6, :cond_1

    .line 1877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1879
    :cond_1
    return-object v9

    .line 1871
    :catch_0
    move-exception v7

    .line 1872
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1876
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1873
    :catch_1
    move-exception v8

    .line 1874
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getUpdateFriendInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 10
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    .line 2113
    if-nez p1, :cond_0

    .line 2114
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2116
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2117
    .local v9, uid:Ljava/lang/String;
    const-string v0, "from_user_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2118
    .local v8, from_user_id:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-nez v8, :cond_2

    .line 2119
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mandatory fields not set at updateFriendInvite. uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , from_user_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2123
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2126
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2128
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2129
    const-string v0, "status"

    const-string v1, "A"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from_user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2135
    sget-object v0, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0

    .line 2131
    :cond_3
    const-string v0, "status"

    const-string v1, "R"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2137
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2138
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getUpdateFriendOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7df

    .line 1068
    if-nez p1, :cond_0

    .line 1069
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v3, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v3

    .line 1071
    :cond_0
    const-string v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, user_id:Ljava/lang/String;
    const-string v3, "friend_of"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, friendOf:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1074
    :cond_1
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mandatory fields not set at updateFriend. user_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , friendOf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1078
    :cond_2
    const-string v3, "active_account"

    const-string v4, "N"

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v3, "friend"

    const-string v4, "F"

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "friend_of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUpdateUserOperation(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    return-object v3
.end method

.method public getUpdateGroupInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7df

    .line 2254
    if-nez p1, :cond_0

    .line 2255
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v3, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v3

    .line 2257
    :cond_0
    const-string v3, "uid"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2258
    .local v2, uid:Ljava/lang/String;
    const-string v3, "group_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2259
    .local v1, group_id:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 2260
    :cond_1
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mandatory fields not set at updateGroupInvite. uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , group_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2265
    :cond_2
    :try_start_0
    sget-object v3, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3
.end method

.method public getUpdateUserOperation(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .parameter "values"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7df

    .line 1130
    if-nez p1, :cond_0

    .line 1131
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v1, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 1133
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v1, v2, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 1137
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1138
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 528
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 533
    return-object v6

    .line 530
    :catch_0
    move-exception v7

    .line 531
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "user_id"
    .parameter "friendOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "user_id and friendOf should not be null at getUserRowId"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    const/4 v9, 0x0

    .line 222
    .local v9, uid:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND friend_of = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    :cond_1
    const/4 v6, 0x0

    .line 229
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 238
    :cond_2
    if-eqz v6, :cond_3

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_3
    return-object v9

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 235
    :catch_1
    move-exception v8

    .line 236
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public insertAlbum(Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1204
    :cond_0
    const/4 v11, 0x0

    .line 1205
    .local v11, res:Landroid/net/Uri;
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1206
    .local v12, uid:Ljava/lang/String;
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1207
    .local v6, album_id:Ljava/lang/String;
    const-string v0, "album_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1208
    .local v7, album_name:Ljava/lang/String;
    const-string v0, "photo_count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1209
    .local v10, photo_count:Ljava/lang/String;
    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-nez v10, :cond_2

    .line 1211
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "mandatory fields not set at insertAlbum"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1214
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1218
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1219
    if-eqz v8, :cond_4

    .line 1220
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1222
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(uid,album_id) = ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") already exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1240
    :catch_0
    move-exception v9

    .line 1241
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1226
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1233
    :cond_4
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1234
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1235
    const-string v0, "SocialNetworkDataHelper"

    const-string v1, "insert Album without insert visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_5
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1246
    if-eqz v11, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1242
    :catch_1
    move-exception v9

    .line 1243
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1246
    .end local v9           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertEvent(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Z
    .locals 13
    .parameter "uid"
    .parameter "event"
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1609
    const/4 v1, 0x0

    .line 1611
    .local v1, insertRes:Landroid/net/Uri;
    :try_start_0
    invoke-direct/range {p0 .. p4}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateEventValues(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentValues;

    move-result-object v12

    .line 1613
    .local v12, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_2

    .line 1617
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1619
    .local v7, cursor2:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1621
    .local v6, EID:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getEventMembers()Ljava/util/List;

    move-result-object v11

    .line 1622
    .local v11, members:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_1

    .line 1623
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 1624
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1626
    .local v10, memberRowId:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1627
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1628
    const-string v0, "sid"

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string v0, "eid"

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v0, "uid"

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1623
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1640
    .end local v6           #EID:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #memberRowId:Ljava/lang/String;
    .end local v11           #members:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v7, :cond_2

    .line 1641
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1649
    .end local v7           #cursor2:Landroid/database/Cursor;
    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1643
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 1644
    .local v8, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1646
    .end local v8           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v8

    .line 1647
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1649
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertFriend(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1031
    if-nez p1, :cond_0

    .line 1032
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 1034
    :cond_0
    const-string v1, "active_account"

    const-string v2, "N"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v1, "friend"

    const-string v2, "F"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v1, "selected"

    const-string v2, "Y"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->insertUser(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1042
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertFriendInvite(Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7df

    .line 2039
    if-nez p1, :cond_0

    .line 2040
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v6, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v6

    .line 2042
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2043
    .local v4, uid:Ljava/lang/String;
    const-string v6, "from_user_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2044
    .local v1, from_user_id:Ljava/lang/String;
    const-string v6, "from_user_name"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2046
    .local v2, from_user_name:Ljava/lang/String;
    const-string v6, "request_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2048
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2050
    :cond_1
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at insertFriendInvite. uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , from_user_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , from_user_name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , request_time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 2056
    :cond_2
    const-string v6, "status"

    const-string v7, "W"

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const/4 v5, 0x0

    .line 2060
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2069
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :goto_0
    return v6

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e4

    invoke-direct {v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v6

    .line 2063
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2064
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2069
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public insertGroupInvite(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2190
    if-nez p1, :cond_0

    .line 2191
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v6, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v6

    .line 2193
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2194
    .local v4, uid:Ljava/lang/String;
    const-string v6, "group_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2195
    .local v1, group_id:Ljava/lang/String;
    const-string v6, "group_name"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2196
    .local v2, group_name:Ljava/lang/String;
    const-string v6, "request_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2197
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2199
    :cond_1
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v7, "mandatory fields not set at insertGroupInvite"

    invoke-direct {v6, v8, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 2202
    :cond_2
    const-string v6, "status"

    const-string v7, "W"

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const/4 v5, 0x0

    .line 2206
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2215
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :goto_0
    return v6

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e4

    invoke-direct {v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v6

    .line 2209
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2210
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2215
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public insertOrUpdateMsgUpdate(Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2307
    if-nez p1, :cond_0

    .line 2308
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2310
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2311
    .local v10, type:Ljava/lang/String;
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2312
    .local v11, uid:Ljava/lang/String;
    const-string v0, "count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2313
    .local v6, count:Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-nez v6, :cond_2

    .line 2314
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mandatory fields not set at insertMsgUpdate. type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2318
    :cond_2
    const/4 v12, 0x0

    .line 2319
    .local v12, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2320
    .local v9, res:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2323
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2325
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2326
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 2335
    :goto_0
    if-eqz v7, :cond_3

    .line 2336
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2340
    :cond_3
    if-nez v12, :cond_4

    if-lez v9, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2330
    :cond_5
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    .line 2337
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2338
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 2340
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertPhotoCache(Landroid/content/ContentValues;)Z
    .locals 14
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1466
    if-nez p1, :cond_0

    .line 1467
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1469
    :cond_0
    const/4 v11, 0x0

    .line 1470
    .local v11, res:Landroid/net/Uri;
    const-string v0, "photo_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1471
    .local v10, pid:Ljava/lang/String;
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1472
    .local v12, service_id:Ljava/lang/String;
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1473
    .local v6, album_id:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1474
    .local v13, url:Ljava/lang/String;
    const-string v0, "create_time"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, create_time:Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    if-eqz v13, :cond_1

    if-nez v8, :cond_2

    .line 1477
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "mandatory fields not set at insertPhotoCache"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1479
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1482
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1484
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1486
    if-eqz v7, :cond_4

    .line 1487
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1488
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1489
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(pid,sid,aid) = ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") already exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1496
    :catch_0
    move-exception v9

    .line 1497
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1493
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1495
    :cond_4
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1502
    if-eqz v11, :cond_5

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1498
    :catch_1
    move-exception v9

    .line 1499
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1502
    .end local v9           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertPhotoCache([Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    .line 1511
    if-nez p1, :cond_0

    .line 1512
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v2, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2

    .line 1513
    :cond_0
    const/4 v0, 0x0

    .line 1515
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1522
    array-length v2, p1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1516
    :catch_0
    move-exception v1

    .line 1517
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e4

    invoke-direct {v2, v3, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 1518
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 1519
    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1522
    .end local v1           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertPhotoUpdate(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x7df

    .line 1955
    if-nez p1, :cond_0

    .line 1956
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1958
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1959
    .local v3, uid:Ljava/lang/String;
    const-string v6, "photo_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1960
    .local v2, photo_id:Ljava/lang/String;
    const-string v6, "last_update_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1962
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1963
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertPhotoUpdate. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,photo_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,last_update_time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1968
    :cond_2
    const-string v6, "is_read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1969
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    const/4 v4, 0x0

    .line 1972
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1981
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :cond_3
    return v5

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1975
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1976
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public insertProfileUpdate(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x7df

    .line 1888
    if-nez p1, :cond_0

    .line 1889
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1891
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1892
    .local v3, uid:Ljava/lang/String;
    const-string v6, "type"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1893
    .local v2, type:Ljava/lang/String;
    const-string v6, "last_check_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1895
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1896
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertProfileUpdate. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , last_update_time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1901
    :cond_2
    const-string v6, "is_read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1902
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const/4 v4, 0x0

    .line 1905
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1914
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :cond_3
    return v5

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1910
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1911
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected insertUser(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 1748
    if-nez p1, :cond_0

    .line 1749
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "values not set at insertUser"

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1752
    :cond_0
    const-string v5, "user_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1753
    .local v3, user_id:Ljava/lang/String;
    const-string v5, "user_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1754
    .local v4, user_name:Ljava/lang/String;
    const-string v5, "profile_url"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, profile_url:Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    .line 1757
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertUser. user_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , serviceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , user_name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , profile_url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1763
    :cond_2
    const/4 v2, 0x0

    .line 1764
    .local v2, res:Landroid/net/Uri;
    const-string v5, "sid"

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1773
    return-object v2

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1769
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1770
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public querySyncStatus(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceName"
    .parameter "type"
    .parameter "specificUser"

    .prologue
    .line 2520
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.socialnetwork.action.QUERY_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2521
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2522
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SYNC_SERVICE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    const-string v2, "SYNC_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2524
    const-string v2, "SYNC_USER"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2529
    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2530
    return-void
.end method

.method public rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2483
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->RAW_QUERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2487
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2489
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2493
    return-object v6

    .line 2490
    :catch_0
    move-exception v7

    .line 2491
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public removeActiveAccount()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 904
    .local v7, start:J
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "user_id"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 906
    .local v0, c1:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 907
    .local v10, userId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 908
    .local v9, uid:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 909
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 911
    :try_start_0
    const-string v11, "_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 912
    const-string v11, "user_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 918
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_1
    if-eqz v10, :cond_2

    if-nez v9, :cond_3

    .line 921
    :cond_2
    const/4 v11, 0x0

    .line 933
    :goto_0
    return v11

    .line 914
    :catch_0
    move-exception v3

    .line 915
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v11, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v12, 0x7de

    invoke-direct {v11, v12, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v11

    .line 923
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v11, ""

    invoke-virtual {p0, v11}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateSessionToken(Ljava/lang/String;)I

    move-result v6

    .line 924
    .local v6, session:I
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->clearData()Z

    move-result v5

    .line 927
    .local v5, res:Z
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.htc.socialnetwork.action.ACTION_LOGOUT"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 928
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "LOGOUT_USER"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v11, "LOGOUT_SERVICE"

    iget-object v12, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    invoke-virtual {v12}, Lcom/htc/socialnetwork/SocialNetworkClient;->getServiceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v11, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mContext:Landroid/content/Context;

    const-string v12, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v1, v11, v7

    .line 932
    .local v1, duration:J
    const-string v11, "SocialNetworkDataHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "removeActiveAccount duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-eqz v5, :cond_4

    if-lez v6, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public setActiveAccount()Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 944
    const/4 v12, 0x0

    .line 946
    .local v12, loginUser:Lcom/htc/socialnetwork/User;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/socialnetwork/SocialNetworkClient;->getLoginUser()Lcom/htc/socialnetwork/User;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/socialnetwork/SocialNetworkClient;->getSessionToken()Ljava/lang/String;

    move-result-object v14

    .line 951
    .local v14, session_token:Ljava/lang/String;
    if-eqz v12, :cond_0

    if-nez v14, :cond_2

    .line 952
    :cond_0
    const-string v24, "SocialNetworkDataHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "loginUser = null ? "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez v12, :cond_1

    const/16 v23, 0x1

    :goto_0
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " , session_token: "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7df

    invoke-direct/range {v23 .. v24}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v23

    .line 947
    .end local v14           #session_token:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 948
    .local v4, ae:Lcom/htc/socialnetwork/AuthenticationException;
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7d0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v1, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v23

    .line 952
    .end local v4           #ae:Lcom/htc/socialnetwork/AuthenticationException;
    .restart local v14       #session_token:Ljava/lang/String;
    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .line 957
    :cond_2
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v17

    .line 958
    .local v17, user_id:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getUserName()Ljava/lang/String;

    move-result-object v18

    .line 959
    .local v18, user_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getFullName()Ljava/lang/String;

    move-result-object v10

    .line 960
    .local v10, full_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getFirstName()Ljava/lang/String;

    move-result-object v9

    .line 961
    .local v9, first_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getLastName()Ljava/lang/String;

    move-result-object v11

    .line 962
    .local v11, last_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getProfileUrl()Ljava/lang/String;

    move-result-object v13

    .line 963
    .local v13, profile_url:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getStatus()Ljava/lang/String;

    move-result-object v15

    .line 964
    .local v15, status:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v7

    .line 965
    .local v7, buddyIconUrl:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getCurrentLocation()Ljava/lang/String;

    move-result-object v8

    .line 966
    .local v8, currentLocation:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getWorkLocation()Ljava/lang/String;

    move-result-object v22

    .line 967
    .local v22, workLocation:Ljava/lang/String;
    if-eqz v17, :cond_3

    if-eqz v18, :cond_3

    if-nez v13, :cond_4

    .line 968
    :cond_3
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7df

    invoke-direct/range {v23 .. v24}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v23

    .line 970
    :cond_4
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 971
    .local v19, values:Landroid/content/ContentValues;
    const-string v23, "user_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v23, "user_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v23, "full_name"

    if-nez v10, :cond_5

    const-string v10, ""

    .end local v10           #full_name:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v23, "first_name"

    if-nez v9, :cond_6

    const-string v9, ""

    .end local v9           #first_name:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v23, "last_name"

    if-nez v11, :cond_7

    const-string v11, ""

    .end local v11           #last_name:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v23, "profile_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v23, "friend_of"

    const-string v24, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v23, "active_account"

    const-string v24, "Y"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v23, "friend"

    const-string v24, "M"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v23, "selected"

    const-string v24, "Y"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v23, "status"

    if-nez v15, :cond_8

    const-string v15, ""

    .end local v15           #status:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v23, "status_update_time"

    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getStatusUpdateTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 983
    const-string v23, "current_location"

    if-nez v8, :cond_9

    const-string v8, ""

    .end local v8           #currentLocation:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v23, "work_location"

    if-nez v22, :cond_a

    const-string v22, ""

    .end local v22           #workLocation:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-wide/16 v5, 0x0

    .line 987
    .local v5, buddyIconUpdateTime:J
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const-string v24, "http"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 988
    :cond_b
    const-string v7, ""

    .line 990
    :cond_c
    const-string v23, "buddy_icon_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v23, "icon_update_time"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 992
    const-string v23, "profile_update_time"

    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getProfileUpdateTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 993
    const-string v23, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 995
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sid = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "active_account"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " = \'Y\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 998
    .local v20, where2:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 999
    .local v3, activeAccountN:Landroid/content/ContentValues;
    const-string v23, "active_account"

    const-string v24, "N"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 1006
    const-string v23, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1010
    .local v16, uid:Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 1011
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1012
    .local v21, where3:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 1021
    .end local v21           #where3:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateSessionToken(Ljava/lang/String;)I

    .line 1022
    const/16 v23, 0x1

    return v23

    .line 1016
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->insertUser(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public updateAlbum(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1330
    if-nez p1, :cond_0

    .line 1331
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1333
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1334
    .local v3, uid:Ljava/lang/String;
    const-string v5, "album_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, album_id:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 1336
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "mandatory fields not set at updateAlbum"

    invoke-direct {v5, v7, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1338
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1340
    .local v4, where:Ljava/lang/String;
    const/4 v2, -0x1

    .line 1342
    .local v2, res:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1346
    if-lez v2, :cond_3

    const/4 v5, 0x1

    :goto_0
    return v5

    .line 1343
    :catch_0
    move-exception v1

    .line 1344
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1346
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateFriend(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1150
    if-nez p1, :cond_0

    .line 1151
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v4

    .line 1153
    :cond_0
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, user_id:Ljava/lang/String;
    const-string v4, "friend_of"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, friendOf:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 1156
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at updateFriend. user_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , friendOf: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1160
    :cond_2
    const-string v4, "active_account"

    const-string v5, "N"

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v4, "friend"

    const-string v5, "F"

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "friend_of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v1

    .line 1168
    .local v1, url:I
    if-lez v1, :cond_3

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateFriendInvite(Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2149
    if-nez p1, :cond_0

    .line 2150
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2152
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2153
    .local v9, uid:Ljava/lang/String;
    const-string v0, "from_user_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2154
    .local v8, from_user_id:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-nez v8, :cond_2

    .line 2155
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mandatory fields not set at updateFriendInvite. uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , from_user_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2159
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2161
    .local v3, where:Ljava/lang/String;
    const/4 v10, -0x1

    .line 2163
    .local v10, url:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2165
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2166
    const-string v0, "status"

    const-string v1, "A"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from_user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2172
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2176
    if-eqz v6, :cond_3

    .line 2177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2181
    :cond_3
    if-lez v10, :cond_5

    move v0, v11

    :goto_1
    return v0

    .line 2168
    :cond_4
    const-string v0, "status"

    const-string v1, "R"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2178
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2179
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_5
    move v0, v12

    .line 2181
    goto :goto_1
.end method

.method public updateGroupInvite(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2277
    if-nez p1, :cond_0

    .line 2278
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 2280
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2281
    .local v2, uid:Ljava/lang/String;
    const-string v5, "group_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2282
    .local v1, group_id:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 2283
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at updateGroupInvite. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , group_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 2287
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "group_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2289
    .local v4, where:Ljava/lang/String;
    const/4 v3, -0x1

    .line 2291
    .local v3, url:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2298
    if-lez v3, :cond_3

    const/4 v5, 0x1

    :goto_0
    return v5

    .line 2295
    :catch_0
    move-exception v0

    .line 2296
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 2298
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized updateSessionToken(Ljava/lang/String;)I
    .locals 7
    .parameter "session_token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1838
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service_class = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1839
    .local v3, where:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1840
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "session_token"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    :try_start_1
    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1849
    .local v1, res:I
    monitor-exit p0

    return v1

    .line 1846
    .end local v1           #res:I
    :catch_0
    move-exception v0

    .line 1847
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1838
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 5
    .parameter "values"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1722
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1723
    :try_start_0
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7df

    invoke-direct {v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1724
    :cond_0
    const/4 v1, 0x0

    .line 1726
    .local v1, res:I
    :try_start_1
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 1735
    monitor-exit p0

    return v1

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e4

    invoke-direct {v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 1729
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1730
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7df

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1732
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_2
    move-exception v0

    .line 1733
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
