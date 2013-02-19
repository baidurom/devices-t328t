.class public abstract Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;
.super Ljava/lang/Object;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$DataQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncEventQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ProfileDataQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_CONTACTS:Ljava/lang/String; = "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

.field private static final DEFAULT_MAX_DELETES:I = 0x32

.field private static final DEFAULT_MAX_INSERTS:I = 0x32

.field private static final DEFAULT_MAX_UPDATES:I = 0x32

.field private static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_RESULT"


# instance fields
.field protected final ACCOUNT_NAME:Ljava/lang/String;

.field protected final ACCOUNT_TYPE:Ljava/lang/String;

.field protected LOG_TAG:Ljava/lang/String;

.field protected final MAX_DELETES:I

.field protected final MAX_INSERTS:I

.field protected final MAX_UPDATES:I

.field protected final MIME_LOGIN_ID:Ljava/lang/String;

.field protected final MIME_PROFILE:Ljava/lang/String;

.field protected final PROFILE_SUMMARY:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "mimeProfile"
    .parameter "mimeLoginId"
    .parameter "profileSummary"

    .prologue
    .line 287
    const/16 v7, 0x32

    const/16 v8, 0x32

    const/16 v9, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "mimeProfile"
    .parameter "mimeLoginId"
    .parameter "profileSummary"
    .parameter "maxDeletes"
    .parameter "maxInserts"
    .parameter "maxUpdates"

    .prologue
    .line 295
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "AbstractContactDbWriter"

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    .line 186
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->uri:Landroid/net/Uri;

    .line 296
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    .line 297
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    .line 298
    iput-object p2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 299
    iput-object p3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    .line 300
    iput-object p4, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_PROFILE:Ljava/lang/String;

    .line 301
    iput-object p5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_LOGIN_ID:Ljava/lang/String;

    .line 302
    iput-object p6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->PROFILE_SUMMARY:Ljava/lang/String;

    .line 303
    iput p7, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    .line 304
    iput p8, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_INSERTS:I

    .line 305
    iput p9, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_UPDATES:I

    .line 306
    return-void
.end method

.method private _syncContactsInBackground(Ljava/util/List;Z)V
    .locals 29
    .parameter
    .parameter "purgeRemovedContacts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    if-nez p1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    .line 509
    .local v15, existingContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;>;"
    const/4 v10, 0x0

    .line 511
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "account_type=? AND account_name=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 514
    if-eqz v10, :cond_17

    .line 515
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 516
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 522
    :catch_0
    move-exception v12

    .line 523
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    if-eqz v10, :cond_16

    .line 526
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 527
    .end local v12           #e:Ljava/lang/Exception;
    :goto_2
    const/4 v10, 0x0

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detecting changes by comparing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new contacts to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existing contacts..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 547
    .local v19, newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v27

    .line 549
    .local v27, updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense/social/data/Person;

    .line 550
    .local v11, contact:Lcom/htc/opensense/social/data/Person;
    iget-object v4, v11, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    .line 552
    .local v14, existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    if-eqz v14, :cond_4

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;

    move-result-object v25

    .line 555
    .local v25, syncHash:Ljava/lang/String;
    if-eqz v25, :cond_2

    invoke-virtual {v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getSyncHash()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 558
    :cond_2
    invoke-virtual {v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_3
    iget-object v4, v11, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 525
    .end local v11           #contact:Lcom/htc/opensense/social/data/Person;
    .end local v14           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    .end local v25           #syncHash:Ljava/lang/String;
    .end local v27           #updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_15

    .line 526
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 527
    const/4 v10, 0x0

    .line 525
    throw v4

    .line 564
    .restart local v11       #contact:Lcom/htc/opensense/social/data/Person;
    .restart local v14       #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    .restart local v27       #updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 571
    .end local v11           #contact:Lcom/htc/opensense/social/data/Person;
    .end local v14           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%d d (purge=%b), %d i, and %d u will be made for contacts."

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz p2, :cond_a

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 583
    const/16 v20, 0x0

    .line 584
    .local v20, num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 586
    .local v21, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 587
    .local v16, i:I
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    .line 588
    .restart local v14       #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    invoke-virtual {v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getRawContactId()J

    move-result-wide v4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildRemovedContactOperations(JI)Ljava/util/ArrayList;

    move-result-object v22

    .line 590
    .local v22, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 591
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v20, v20, v4

    .line 593
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    if-lt v4, v5, :cond_6

    .line 594
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 595
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 571
    .end local v14           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .end local v16           #i:I
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v22           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 600
    .restart local v16       #i:I
    .restart local v20       #num_operations:I
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  processed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " operations for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " DELETED contacts (avg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v16           #i:I
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 614
    const/16 v20, 0x0

    .line 615
    .restart local v20       #num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 617
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v16

    .line 618
    .restart local v16       #i:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense/social/data/Person;

    .line 619
    .local v18, newContact:Lcom/htc/opensense/social/data/Person;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildNewContactOperations(Lcom/htc/opensense/social/data/Person;I)Ljava/util/ArrayList;

    move-result-object v22

    .line 621
    .restart local v22       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 622
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v20, v20, v4

    .line 624
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_INSERTS:I

    if-lt v4, v5, :cond_b

    .line 625
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 626
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 600
    .end local v18           #newContact:Lcom/htc/opensense/social/data/Person;
    .end local v22           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    div-int v4, v20, v4

    goto :goto_6

    .line 631
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  processed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " operations for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " NEW contacts (avg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v16           #i:I
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 646
    const/16 v20, 0x0

    .line 647
    .restart local v20       #num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 649
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 650
    .restart local v16       #i:I
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_10
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 651
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 652
    .local v23, rawContactId:J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/opensense/social/data/Person;

    .line 653
    .local v26, updatedContact:Lcom/htc/opensense/social/data/Person;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildExistingContactOperations(Lcom/htc/opensense/social/data/Person;J)Ljava/util/ArrayList;

    move-result-object v22

    .line 655
    .restart local v22       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 656
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v20, v20, v4

    .line 658
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_UPDATES:I

    if-lt v4, v5, :cond_10

    .line 659
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 660
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 631
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    .end local v22           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v23           #rawContactId:J
    .end local v26           #updatedContact:Lcom/htc/opensense/social/data/Person;
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v20, v4

    goto :goto_8

    .line 665
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  processed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " operations for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " UPDATE contacts (avg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v4

    div-int v4, v20, v4

    goto :goto_a

    .line 529
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v27           #updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB!"

    :goto_b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v12       #e:Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB!"

    goto :goto_b

    .line 525
    .end local v12           #e:Ljava/lang/Exception;
    :cond_17
    if-eqz v10, :cond_18

    .line 526
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 529
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB!"

    goto :goto_b
.end method

.method static synthetic access$000(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->getRawId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static final addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 738
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getRawId()J
    .locals 14

    .prologue
    .line 251
    const-string v6, "profile"

    .line 252
    .local v6, PROFILE_LOOKUP_KEY:Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 253
    .local v8, profileId:J
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "lookup =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "profile"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 254
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 258
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 259
    const/4 v7, 0x0

    .line 261
    :cond_1
    const-wide/16 v10, -0x1

    .line 262
    .local v10, profileRawContactId:J
    invoke-static {v8, v9}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v12, selection:Ljava/lang/StringBuilder;
    const-string v0, "account_name"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, "account_type"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v0, "data_set"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v0, "contact_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    if-eqz v7, :cond_3

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 276
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 277
    const/4 v7, 0x0

    .line 281
    .end local v12           #selection:Ljava/lang/StringBuilder;
    :cond_3
    return-wide v10
.end method

.method protected static final newAvatar(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "avatar"
    .parameter "mimeType"

    .prologue
    .line 795
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    const/4 v0, 0x0

    .line 802
    :goto_0
    return-object v0

    .line 799
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 800
    const-string v0, "mimetype"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final newContactBirthdate(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Person;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "values"
    .parameter "contact"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 807
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    if-ne v1, v2, :cond_1

    .line 808
    :cond_0
    const/4 v1, 0x0

    .line 828
    :goto_0
    return-object v1

    .line 811
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 812
    .local v0, time:Landroid/text/format/Time;
    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 813
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    if-eq v1, v2, :cond_2

    .line 814
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    iget v2, p1, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p1, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 820
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 821
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const-string v1, "data4"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    const-string v1, "data5"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    const-string v1, "data8"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v1, "data9"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v1, "data11"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0

    .line 817
    :cond_2
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    iget v2, p1, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x7b2

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    goto :goto_1
.end method

.method protected static final newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "uri"
    .parameter "yield"

    .prologue
    .line 732
    invoke-static {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected static final newDisplayName(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Person;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "values"
    .parameter "user"

    .prologue
    .line 755
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 756
    :cond_0
    const/4 v1, 0x0

    .line 765
    :goto_0
    return-object v1

    .line 758
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    .line 760
    .local v0, profile:Lcom/htc/opensense/social/data/Profile;
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 761
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v2, "data1"

    iget-object v1, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_2
    iget-object v1, v0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    goto :goto_1
.end method

.method protected static final newEmail(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "email"

    .prologue
    .line 782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const/4 v0, 0x0

    .line 790
    :goto_0
    return-object v0

    .line 786
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 787
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "uri"
    .parameter "yield"

    .prologue
    .line 720
    invoke-static {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected static final newPhoneNumber(Landroid/content/ContentValues;Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 778
    :goto_0
    return-object v0

    .line 774
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 775
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "uri"
    .parameter "yield"

    .prologue
    .line 726
    invoke-static {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyOperations(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 683
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 690
    :catch_0
    move-exception v1

    .line 691
    .local v1, e1:Landroid/content/OperationApplicationException;
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyOperations for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 693
    .local v4, numOperations:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 694
    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v7, "#%d: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 697
    .end local v1           #e1:Landroid/content/OperationApplicationException;
    .end local v3           #i:I
    .end local v4           #numOperations:I
    :catch_1
    move-exception v2

    .line 698
    .local v2, e2:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyOperations for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 700
    .restart local v4       #numOperations:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 701
    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v7, "#%d: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 704
    .end local v2           #e2:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #numOperations:I
    :catch_2
    move-exception v0

    .line 705
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to applyOperations!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected applyOperationsToCalendars(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "com.android.calendar"

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperations(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method protected applyOperationsToContacts(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperations(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method protected buildExistingContactOperations(Lcom/htc/opensense/social/data/Person;J)Ljava/util/ArrayList;
    .locals 6
    .parameter "contact"
    .parameter "rawContactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Person;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 349
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, syncHash:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 355
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 356
    const-string v5, "sync1"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 358
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-object v1
.end method

.method protected buildNewContactOperations(Lcom/htc/opensense/social/data/Person;I)Ljava/util/ArrayList;
    .locals 7
    .parameter "contact"
    .parameter "backRef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Person;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 318
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v2

    .line 319
    .local v2, profile:Lcom/htc/opensense/social/data/Profile;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 321
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 326
    const-string v4, "account_type"

    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v4, "account_name"

    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v4, "sourceid"

    iget-object v5, p1, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v4, "sync1"

    invoke-virtual {p0, p1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v4, "version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 332
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {p0, v3, v2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newProfile(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Profile;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 337
    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    return-object v1
.end method

.method protected buildRemovedContactOperations(JI)Ljava/util/ArrayList;
    .locals 4
    .parameter "rawContactId"
    .parameter "backRef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 366
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 368
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-object v1
.end method

.method protected abstract computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;
.end method

.method public deleteLoginUserId()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;-><init>(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)V

    invoke-virtual {v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->start()V

    .line 202
    return-void
.end method

.method public deleteRemovedContacts(Ljava/util/Set;)V
    .locals 18
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
    .line 422
    .local p1, currentContactUids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 428
    .local v10, existingContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;>;"
    const/4 v7, 0x0

    .line 430
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "account_type=? AND account_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 433
    if-eqz v7, :cond_7

    .line 434
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 435
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v8

    .line 442
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    if-eqz v7, :cond_6

    .line 445
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 446
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    .line 456
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 457
    .local v16, uid:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    goto :goto_2

    .line 444
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 445
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 446
    const/4 v7, 0x0

    .line 444
    throw v1

    .line 463
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "%d deletes will be made."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v13, 0x0

    .line 471
    .local v13, num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 473
    .local v14, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 474
    .local v11, i:I
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    .line 475
    .local v9, existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    invoke-virtual {v9}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getRawContactId()J

    move-result-wide v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildRemovedContactOperations(JI)Ljava/util/ArrayList;

    move-result-object v15

    .line 477
    .local v15, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 478
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v13, v1

    .line 480
    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    if-lt v1, v2, :cond_1

    .line 481
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 482
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 487
    .end local v9           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  processed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " operations for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " DELETED contacts (avg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #num_operations:I
    .end local v14           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_5
    return-void

    .line 487
    .restart local v11       #i:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #num_operations:I
    .restart local v14       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    div-int v1, v13, v1

    goto :goto_4

    .line 448
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #num_operations:I
    .end local v14           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB!"

    :goto_6
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .restart local v8       #e:Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB!"

    goto :goto_6

    .line 444
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz v7, :cond_8

    .line 445
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 448
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB!"

    goto :goto_6
.end method

.method protected getACCOUNT_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getACCOUNT_TYPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method protected getMAX_DELETES()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    return v0
.end method

.method protected getMAX_INSERTS()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_INSERTS:I

    return v0
.end method

.method protected getMAX_UPDATES()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_UPDATES:I

    return v0
.end method

.method protected getMIME_LOGIN_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_LOGIN_ID:Ljava/lang/String;

    return-object v0
.end method

.method protected getMIME_PROFILE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_PROFILE:Ljava/lang/String;

    return-object v0
.end method

.method protected getPROFILE_SUMMARY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->PROFILE_SUMMARY:Ljava/lang/String;

    return-object v0
.end method

.method protected getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getmResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public insertLoginUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 205
    new-instance v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;-><init>(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->start()V

    .line 246
    return-void
.end method

.method protected final newProfile(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Profile;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "profile"

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 746
    const-string v0, "data1"

    iget-object v1, p2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "data2"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->PROFILE_SUMMARY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "data3"

    iget-object v1, p2, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "mimetype"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public sendFinishBroadcast(Z)V
    .locals 4
    .parameter "result"

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.opensense.provider.intent.EXTRA_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

    iget-object v3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send finish intent to ContactProvider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method protected setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method protected setmResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "mResolver"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    .line 131
    return-void
.end method

.method public syncContacts(Ljava/util/List;)V
    .locals 1
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
    .line 375
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->syncContacts(Ljava/util/List;Z)V

    .line 376
    return-void
.end method

.method public syncContacts(Ljava/util/List;Z)V
    .locals 6
    .parameter
    .parameter "purgeRemovedContacts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncContacts-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0x80001

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, THREAD_NAME:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->_syncContactsInBackground(Ljava/util/List;Z)V

    .line 391
    return-void
.end method
