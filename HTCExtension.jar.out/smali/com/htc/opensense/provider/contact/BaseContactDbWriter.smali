.class public abstract Lcom/htc/opensense/provider/contact/BaseContactDbWriter;
.super Ljava/lang/Object;
.source "BaseContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_CONTACTS:Ljava/lang/String; = "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

.field private static final DEBUG:Z = false

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_RESULT"

.field private static final INTENT_BASENAME:Ljava/lang/String; = "com.htc.opensense.provider.intent."

.field private static final LOG_NUM_APPLY_BATCH_RESULTS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "BaseContactDbWriter"

.field protected static final MAX_CALENDAR_OPS_PER_BATCH:I = 0x5

.field protected static final MAX_HASH_OPS_PER_BATCH:I = 0x5

.field protected static final MAX_RAWCONTACT_OPS_PER_BATCH:I = 0x5

.field protected static final PROFILE_DATA3:Ljava/lang/String; = "View profile"

.field public static final TABLE_EVENTS:Ljava/lang/String; = "Events"

.field protected static final sBirthDate:Ljava/text/SimpleDateFormat;

.field protected static final sBirthDateWithYear:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mAccountName:Ljava/lang/String;

.field protected mAccountType:Ljava/lang/String;

.field protected mAccountTypeName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSyncCalendarEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->sBirthDateWithYear:Ljava/text/SimpleDateFormat;

    .line 233
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->sBirthDate:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mContext:Landroid/content/Context;

    .line 246
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    .line 247
    iput-object p2, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    .line 252
    return-void
.end method

.method public static applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;
    .locals 5
    .parameter "resolver"
    .parameter "authority"
    .parameter
    .parameter "clearOps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 800
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 806
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 808
    .local v1, results:[Landroid/content/ContentProviderResult;
    if-eqz p3, :cond_0

    .line 809
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 811
    :cond_0
    if-eqz v1, :cond_1

    .line 846
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v1

    .line 834
    .restart local v1       #results:[Landroid/content/ContentProviderResult;
    :cond_1
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed and results is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 838
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 840
    :catch_1
    move-exception v0

    .line 841
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 842
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v0

    .line 843
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyBatch failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static final applyBatchStatusUpdates(Landroid/content/ContentResolver;Ljava/util/Map;Z)V
    .locals 6
    .parameter "resolver"
    .parameter
    .parameter "clearOps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, ops:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v3, opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 599
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 600
    .local v4, profileDataId:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation$Builder;

    .line 601
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "presence_data_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    .end local v4           #profileDataId:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 605
    const-string v5, "com.android.contacts"

    invoke-static {p0, v5, v3, p2}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 607
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    return-void
.end method

.method private static final applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V
    .locals 7
    .parameter "resolver"
    .parameter "results"
    .parameter
    .parameter "clearOps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Landroid/content/ContentProviderResult;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p2, ops:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    if-eqz p1, :cond_2

    array-length v6, p1

    if-lez v6, :cond_2

    .line 577
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v4, opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 579
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 580
    .local v0, backRefIndex:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation$Builder;

    .line 581
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    array-length v6, p1

    if-ge v0, v6, :cond_0

    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 583
    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, profileId:Ljava/lang/String;
    const-string v6, "presence_data_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    .end local v0           #backRefIndex:I
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    .end local v5           #profileId:Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 590
    const-string v6, "com.android.contacts"

    invoke-static {p0, v6, v4, p3}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 592
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #opsToRun:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    return-void
.end method

.method protected static final getNewInsert(ZILandroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "useBackReference"
    .parameter "indexId"
    .parameter "uri"
    .parameter "key"

    .prologue
    .line 905
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 906
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p0, :cond_0

    .line 907
    invoke-virtual {v0, p3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 909
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addCallerIsCalendarSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 1203
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final addDataOps(Ljava/util/ArrayList;Lcom/htc/opensense/social/data/Person;)I
    .locals 1
    .parameter
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/opensense/social/data/Person;",
            ")I"
        }
    .end annotation

    .prologue
    .line 855
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/opensense/social/data/Person;I)I

    move-result v0

    return v0
.end method

.method protected abstract addDataOps(Ljava/util/ArrayList;Lcom/htc/opensense/social/data/Person;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/opensense/social/data/Person;",
            "I)I"
        }
    .end annotation
.end method

.method protected abstract addEventOps(Ljava/util/ArrayList;ILcom/htc/opensense/social/data/Person;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Lcom/htc/opensense/social/data/Person;",
            ")V"
        }
    .end annotation
.end method

.method public addOrUpdateContacts(Ljava/util/List;)V
    .locals 39
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, friends:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOrUpdateContacts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .local v9, buffer:Ljava/lang/StringBuffer;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v24, newContacts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/social/data/Person;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense/social/data/Person;

    .line 345
    .local v16, friend:Lcom/htc/opensense/social/data/Person;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 346
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 349
    .end local v16           #friend:Lcom/htc/opensense/social/data/Person;
    :cond_2
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v28, rawContacts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v26, newHashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v12, dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v15, eventOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v34, statusUpdateOps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentProviderOperation$Builder;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->prepareCalendar()I

    move-result v11

    .line 357
    .local v11, calId:I
    const/4 v10, 0x0

    .line 359
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "sourceid"

    aput-object v6, v4, v5

    const-string v5, "account_type"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 366
    if-eqz v10, :cond_1a

    .line 367
    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1a

    .line 369
    :try_start_1
    const-string v2, "sourceid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 370
    .local v35, uid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 371
    .local v29, rawId:I
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    new-instance v2, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-direct {v2, v0, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 374
    .end local v29           #rawId:I
    .end local v35           #uid:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 375
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BaseContactDbWriter"

    const-string v3, "addOrUpdateContacts can\'t fetch a raw contact!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 380
    .end local v14           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 381
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BaseContactDbWriter"

    const-string v3, "addOrUpdateContacts failed with an error!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    if-eqz v10, :cond_4

    .line 384
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 385
    .end local v14           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v10, 0x0

    .line 388
    :cond_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 390
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 398
    if-eqz v10, :cond_19

    .line 399
    :cond_5
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    if-eqz v2, :cond_19

    .line 401
    :try_start_5
    const-string v2, "user_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 402
    .restart local v35       #uid:Ljava/lang/String;
    const-string v2, "user_hash"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 403
    .local v17, hash:I
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 404
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Person;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getHashFromUser(Lcom/htc/opensense/social/data/Person;)I

    move-result v25

    .line 405
    .local v25, newHash:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_5

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 408
    const-string v2, "BaseContactDbWriter"

    const-string v3, "User %s needs update. %d != %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v35, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;

    .line 412
    .local v27, rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    .line 413
    const/4 v2, 0x1

    move-object/from16 v0, v27

    iput v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 416
    .end local v17           #hash:I
    .end local v25           #newHash:I
    .end local v27           #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .end local v35           #uid:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 417
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "BaseContactDbWriter"

    const-string v3, "addOrUpdateContacts failed to hash!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 422
    .end local v14           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 423
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "BaseContactDbWriter"

    const-string v3, "addOrUpdateContacts failed to make hash!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 425
    if-eqz v10, :cond_6

    .line 426
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 427
    .end local v14           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v10, 0x0

    .line 430
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    .line 433
    :cond_7
    const/16 v18, 0x0

    .line 434
    .local v18, i:I
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 435
    .local v22, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/data/Person;>;"
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 436
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/htc/opensense/social/data/Person;

    .line 437
    .local v37, user:Lcom/htc/opensense/social/data/Person;
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 438
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;

    .line 439
    .restart local v27       #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 441
    const-string v2, "BaseContactDbWriter"

    const-string v3, "%d %s: delete data"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getDeleteColumns()[Ljava/lang/String;

    move-result-object v13

    .line 446
    .local v13, delCols:[Ljava/lang/String;
    if-nez v13, :cond_8

    .line 447
    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    .line 449
    :cond_8
    array-length v2, v13

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v32, v0

    .line 450
    .local v32, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iget v3, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v32, v2

    .line 451
    array-length v2, v13

    if-lez v2, :cond_d

    .line 452
    const-string v2, " AND ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    array-length v2, v13

    add-int/lit8 v23, v2, -0x1

    .local v23, j:I
    :goto_7
    if-ltz v23, :cond_c

    .line 454
    add-int/lit8 v2, v23, 0x1

    aget-object v3, v13, v23

    aput-object v3, v32, v2

    .line 455
    const-string v2, "mimetype"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    if-eqz v23, :cond_9

    .line 457
    const-string v2, " OR "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_9
    add-int/lit8 v23, v23, -0x1

    goto :goto_7

    .line 383
    .end local v13           #delCols:[Ljava/lang/String;
    .end local v18           #i:I
    .end local v22           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/data/Person;>;"
    .end local v23           #j:I
    .end local v27           #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .end local v32           #selectionArgs:[Ljava/lang/String;
    .end local v37           #user:Lcom/htc/opensense/social/data/Person;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_a

    .line 384
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 385
    const/4 v10, 0x0

    .line 383
    :cond_a
    throw v2

    .line 425
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_b

    .line 426
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 427
    const/4 v10, 0x0

    .line 425
    :cond_b
    throw v2

    .line 460
    .restart local v13       #delCols:[Ljava/lang/String;
    .restart local v18       #i:I
    .restart local v22       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/data/Person;>;"
    .restart local v23       #j:I
    .restart local v27       #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .restart local v32       #selectionArgs:[Ljava/lang/String;
    .restart local v37       #user:Lcom/htc/opensense/social/data/Person;
    :cond_c
    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    .end local v23           #j:I
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    .line 463
    .local v31, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v12, v1, v2}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/opensense/social/data/Person;I)I

    move-result v8

    .line 468
    .local v8, backRefIndex:I
    if-ltz v8, :cond_e

    .line 469
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/opensense/social/data/Feed;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v33

    .line 470
    .local v33, statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v33, :cond_e

    .line 471
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .end local v33           #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v2, :cond_10

    .line 476
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "_sync_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " LIKE \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-birthday\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 489
    if-eqz v10, :cond_18

    .line 490
    :goto_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v2

    if-eqz v2, :cond_18

    .line 492
    :try_start_9
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 493
    .local v20, id:J
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v36

    .line 495
    .local v36, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->addCallerIsCalendarSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    .line 498
    .end local v20           #id:J
    .end local v36           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v2

    goto :goto_8

    .line 503
    :catch_5
    move-exception v14

    .line 504
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v2, "BaseContactDbWriter"

    const-string v3, "Failed to sync calendar!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 506
    if-eqz v10, :cond_f

    .line 507
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 508
    .end local v14           #e:Ljava/lang/Exception;
    :goto_9
    const/4 v10, 0x0

    .line 511
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v15, v11, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->addEventOps(Ljava/util/ArrayList;ILcom/htc/opensense/social/data/Person;)V

    .line 547
    .end local v8           #backRefIndex:I
    .end local v13           #delCols:[Ljava/lang/String;
    .end local v27           #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .end local v31           #selection:Ljava/lang/String;
    .end local v32           #selectionArgs:[Ljava/lang/String;
    :cond_10
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    const/4 v4, 0x1

    invoke-static {v2, v3, v12, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v30

    .line 550
    .local v30, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-static {v2, v0, v1, v3}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V

    .line 552
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v2, :cond_11

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.calendar"

    const/4 v4, 0x1

    invoke-static {v2, v3, v15, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 435
    .end local v30           #results:[Landroid/content/ContentProviderResult;
    :cond_11
    :goto_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 506
    .restart local v8       #backRefIndex:I
    .restart local v13       #delCols:[Ljava/lang/String;
    .restart local v27       #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .restart local v31       #selection:Ljava/lang/String;
    .restart local v32       #selectionArgs:[Ljava/lang/String;
    :catchall_2
    move-exception v2

    if-eqz v10, :cond_12

    .line 507
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 508
    const/4 v10, 0x0

    .line 506
    :cond_12
    throw v2

    .line 515
    .end local v8           #backRefIndex:I
    .end local v13           #delCols:[Ljava/lang/String;
    .end local v27           #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .end local v31           #selection:Ljava/lang/String;
    .end local v32           #selectionArgs:[Ljava/lang/String;
    :cond_13
    new-instance v25, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;

    const/4 v2, 0x2

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getHashFromUser(Lcom/htc/opensense/social/data/Person;)I

    move-result v4

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;-><init>(ILjava/lang/String;I)V

    .line 517
    .local v25, newHash:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sourceid"

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "version"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "deleted"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "aggregation_mode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sync1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sync2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sync3"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sync4"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v12, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->addDataOps(Ljava/util/ArrayList;Lcom/htc/opensense/social/data/Person;)I

    move-result v8

    .line 538
    .restart local v8       #backRefIndex:I
    if-ltz v8, :cond_14

    .line 539
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/opensense/social/data/Feed;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v33

    .line 540
    .restart local v33       #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v33, :cond_14

    .line 541
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v33           #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v15, v11, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->addEventOps(Ljava/util/ArrayList;ILcom/htc/opensense/social/data/Person;)V

    goto/16 :goto_a

    .line 556
    .end local v8           #backRefIndex:I
    .end local v25           #newHash:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    :cond_15
    if-lez v18, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getMaxContactBatchPerRawContactBatch()I

    move-result v2

    rem-int v2, v18, v2

    if-nez v2, :cond_16

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    const/4 v4, 0x1

    invoke-static {v2, v3, v12, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    move-result-object v30

    .line 559
    .restart local v30       #results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-static {v2, v0, v1, v3}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;[Landroid/content/ContentProviderResult;Ljava/util/Map;Z)V

    goto/16 :goto_b

    .line 561
    .end local v30           #results:[Landroid/content/ContentProviderResult;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v2, :cond_11

    if-lez v18, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getMaxContactBatchPerCalendarBatch()I

    move-result v2

    rem-int v2, v18, v2

    if-nez v2, :cond_11

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.calendar"

    const/4 v4, 0x1

    invoke-static {v2, v3, v15, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    goto/16 :goto_b

    .line 569
    .end local v37           #user:Lcom/htc/opensense/social/data/Person;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 506
    .restart local v8       #backRefIndex:I
    .restart local v13       #delCols:[Ljava/lang/String;
    .restart local v27       #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .restart local v31       #selection:Ljava/lang/String;
    .restart local v32       #selectionArgs:[Ljava/lang/String;
    .restart local v37       #user:Lcom/htc/opensense/social/data/Person;
    :cond_18
    if-eqz v10, :cond_f

    .line 507
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 425
    .end local v8           #backRefIndex:I
    .end local v13           #delCols:[Ljava/lang/String;
    .end local v18           #i:I
    .end local v22           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/data/Person;>;"
    .end local v27           #rawContact:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    .end local v31           #selection:Ljava/lang/String;
    .end local v32           #selectionArgs:[Ljava/lang/String;
    .end local v37           #user:Lcom/htc/opensense/social/data/Person;
    :cond_19
    if-eqz v10, :cond_6

    .line 426
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 383
    :cond_1a
    if-eqz v10, :cond_4

    .line 384
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method public deleteContacts(Ljava/util/Set;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, newUids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "BaseContactDbWriter"

    const-string v3, "deleteContacts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 623
    .local v8, buffer:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v17, uidsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 630
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sourceid"

    aput-object v6, v4, v5

    const-string v5, "account_type"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 638
    if-nez v9, :cond_1

    .line 660
    if-eqz v9, :cond_0

    .line 661
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 662
    :goto_0
    const/4 v9, 0x0

    .line 699
    :cond_0
    :goto_1
    return-void

    .line 641
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    .line 643
    :try_start_2
    const-string v2, "sourceid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 644
    .local v15, uid:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 645
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 647
    .end local v15           #uid:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 648
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BaseContactDbWriter"

    const-string v3, "error"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 657
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 658
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "BaseContactDbWriter"

    const-string v3, "Failed to deleteContacts!"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 660
    if-eqz v9, :cond_2

    .line 661
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 662
    .end local v11           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v9, 0x0

    .line 670
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 672
    .local v18, uri:Landroid/net/Uri;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v10, dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 674
    .local v12, hashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    const/4 v13, 0x0

    .line 675
    .local v13, i:I
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 676
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 677
    .local v16, uidToDelete:Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 678
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "sourceid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v16, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v2, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;

    const/4 v3, 0x3

    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;-><init>(ILjava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v13, :cond_4

    rem-int/lit8 v2, v13, 0x5

    if-nez v2, :cond_4

    .line 690
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    const/4 v4, 0x1

    invoke-static {v2, v3, v10, v4}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 675
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 651
    .end local v10           #dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v12           #hashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    .end local v13           #i:I
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16           #uidToDelete:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_5
    :try_start_5
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 652
    const-string v2, "BaseContactDbWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contacts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v2

    if-gtz v2, :cond_8

    .line 660
    if-eqz v9, :cond_0

    .line 661
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 660
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_6

    .line 661
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 662
    const/4 v9, 0x0

    .line 660
    :cond_6
    throw v2

    .line 696
    .restart local v10       #dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v12       #hashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    .restart local v13       #i:I
    .restart local v14       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->updateUserHashes(Ljava/util/Map;)V

    .line 697
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    goto/16 :goto_1

    .line 660
    .end local v10           #dataOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v12           #hashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    .end local v13           #i:I
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #uri:Landroid/net/Uri;
    :cond_8
    if-eqz v9, :cond_2

    .line 661
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method protected getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method protected getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected getAccountTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountTypeName:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDeleteColumns()[Ljava/lang/String;
.end method

.method protected abstract getHashFromUser(Lcom/htc/opensense/social/data/Person;)I
.end method

.method protected getMaxContactBatchPerCalendarBatch()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x5

    return v0
.end method

.method protected getMaxContactBatchPerRawContactBatch()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getProfileData2Value()Ljava/lang/String;
.end method

.method protected getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method protected getStatusUpdate(Lcom/htc/opensense/social/data/Feed;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "feed"

    .prologue
    .line 863
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isSyncCalendarEvents()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    return v0
.end method

.method public prepareCalendar()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 275
    const/4 v7, -0x1

    .line 276
    .local v7, calId:I
    const/4 v6, 0x0

    .line 278
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    iget-object v10, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    if-eqz v6, :cond_0

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 290
    :cond_0
    if-eqz v6, :cond_1

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :goto_0
    const/4 v6, 0x0

    .line 295
    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    if-eqz v0, :cond_2

    .line 296
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    .line 297
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 330
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return v7

    .line 287
    :catch_0
    move-exception v8

    .line 288
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "BaseContactDbWriter"

    const-string v1, "prepareCalendar failed!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    if-eqz v6, :cond_1

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 290
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    const/4 v6, 0x0

    .line 290
    :cond_3
    throw v0

    .line 307
    :cond_4
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "account_type"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 311
    const-string v0, "calendar_displayName"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountTypeName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "ownerAccount"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "sync_events"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v0, "calendar_color"

    const v1, -0xd6ad86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v0, "calendar_access_level"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v0, "calendar_timezone"

    const-string v1, "UTC"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "sync_source"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v0, "displayOrder"

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    :try_start_3
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    goto/16 :goto_1

    .line 325
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 303
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public sendFinishBroadcast(Z)V
    .locals 5
    .parameter "result"

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.opensense.provider.intent.EXTRA_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

    iget-object v4, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method protected setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "mAccountName"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    .line 173
    return-void
.end method

.method protected setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "mAccountType"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method protected setAccountTypeName(Ljava/lang/String;)V
    .locals 0
    .parameter "mAccountTypeName"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountTypeName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method protected setResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "mResolver"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    .line 141
    return-void
.end method

.method protected setSyncCalendarEvents(Z)V
    .locals 0
    .parameter "mSyncCalendarEvents"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mSyncCalendarEvents:Z

    .line 205
    return-void
.end method

.method public updateStatusUpdates(Ljava/util/List;)V
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 994
    :cond_0
    return-void

    .line 922
    :cond_1
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 923
    .local v21, uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/opensense/social/data/Person;

    .line 924
    .local v22, user:Lcom/htc/opensense/social/data/Person;
    if-eqz v22, :cond_2

    .line 925
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 929
    .end local v22           #user:Lcom/htc/opensense/social/data/Person;
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 933
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .line 934
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 935
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 936
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getProfileData2Value()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 937
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 938
    .local v16, selection:Ljava/lang/StringBuffer;
    const-string v2, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "data2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=? AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 941
    const/4 v11, 0x0

    .line 942
    .local v11, i:I
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 943
    if-lez v11, :cond_4

    .line 944
    const-string v2, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    :cond_4
    const-string v2, "sourceid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 948
    .local v18, source_id:Ljava/lang/String;
    add-int/lit8 v2, v11, 0x3

    aput-object v18, v6, v2

    .line 942
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 950
    .end local v18           #source_id:Ljava/lang/String;
    :cond_5
    const-string v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 953
    .local v13, idMaps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 955
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "sourceid"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "_id"

    aput-object v7, v4, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 958
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 959
    const-string v2, "sourceid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 960
    .local v17, sourceId:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 961
    .local v9, dataId:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 963
    .end local v9           #dataId:Ljava/lang/String;
    .end local v17           #sourceId:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 964
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BaseContactDbWriter"

    const-string v3, "updateStatusUpdates failed!"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    if-eqz v8, :cond_6

    .line 967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 968
    .end local v10           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v8, 0x0

    .line 972
    :cond_6
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 976
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 977
    .local v20, statusUpdateOps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    const/4 v11, 0x0

    .line 978
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/data/Person;>;"
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/opensense/social/data/Person;

    .line 980
    .restart local v22       #user:Lcom/htc/opensense/social/data/Person;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->getStatusUpdate(Lcom/htc/opensense/social/data/Feed;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 982
    .local v19, statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v19, :cond_7

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 983
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 984
    .restart local v9       #dataId:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .end local v9           #dataId:Ljava/lang/String;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    if-lez v11, :cond_9

    rem-int/lit8 v2, v11, 0x5

    if-nez v2, :cond_9

    .line 989
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatchStatusUpdates(Landroid/content/ContentResolver;Ljava/util/Map;Z)V

    .line 978
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 966
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/social/data/Person;>;"
    .end local v19           #statusBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #statusUpdateOps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;>;"
    .end local v22           #user:Lcom/htc/opensense/social/data/Person;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_a

    .line 967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 968
    const/4 v8, 0x0

    .line 966
    :cond_a
    throw v2

    :cond_b
    if-eqz v8, :cond_6

    .line 967
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public updateUserHashes(Ljava/util/Map;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, userhashes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    const/4 v11, 0x1

    .line 714
    iget-object v6, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 715
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 716
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 718
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 719
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 720
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;

    .line 721
    .local v5, userhash:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    const/4 v3, 0x0

    .line 723
    .local v3, op:Landroid/content/ContentProviderOperation;
    :try_start_0
    iget v6, v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v6, :pswitch_data_0

    .line 777
    :goto_1
    if-eqz v3, :cond_0

    .line 778
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_0
    if-lez v1, :cond_1

    rem-int/lit8 v6, v1, 0x5

    if-eqz v6, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 783
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "com.htc.opensense.snprovider"

    invoke-static {v6, v7, v4, v11}, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;Z)[Landroid/content/ContentProviderResult;

    .line 719
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :pswitch_0
    :try_start_1
    sget-object v6, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "account_type"

    iget-object v8, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "account_name"

    iget-object v8, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "user_id"

    iget-object v8, v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "user_hash"

    iget v8, v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 733
    goto :goto_1

    .line 736
    :pswitch_1
    sget-object v6, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "user_hash"

    iget v8, v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 754
    goto/16 :goto_1

    .line 757
    :pswitch_2
    sget-object v6, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=? AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter;->mAccountName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 767
    goto/16 :goto_1

    .line 789
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    .end local v3           #op:Landroid/content/ContentProviderOperation;
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5           #userhash:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    :cond_4
    return-void

    .line 774
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #i:I
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;>;"
    .restart local v3       #op:Landroid/content/ContentProviderOperation;
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v5       #userhash:Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
