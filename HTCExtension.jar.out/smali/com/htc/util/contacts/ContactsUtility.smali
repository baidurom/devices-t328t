.class public Lcom/htc/util/contacts/ContactsUtility;
.super Ljava/lang/Object;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/ContactsUtility$ContactQuery;,
        Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;
    }
.end annotation


# static fields
.field public static final CONTACT_QUERY_PARAMETER_EXCLUDE_SIM:Ljava/lang/String; = "excludeSIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTACT_QUERY_PARAMETER_ONLY_PHONE:Ljava/lang/String; = "onlyPhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ContactsProviderFilesTempPath:Ljava/lang/String; = "/data/data/com.android.providers.contacts/Temp"

.field public static final DEBUG:Z = false

.field private static final DEBUG_URL_INDEX:I = 0x0

.field public static final DEFAULT_ACTION_ACTION_URL:Ljava/lang/String; = "action_url"

.field public static final DEFAULT_ACTION_CALL_TYPE:Ljava/lang/String; = "action_call_type"

.field public static final DEFAULT_ACTION_DATA:Ljava/lang/String; = "action_data"

.field public static final DEFAULT_ACTION_DATA_URL:Ljava/lang/String; = "action_url"

.field public static final DEFAULT_ACTION_INTENT_ACTION:Ljava/lang/String; = "action_intent_action"

.field public static final DEFAULT_ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final DIALING:Ljava/lang/String; = "Dialing"

.field public static final MAIL:Ljava/lang/String; = "SendMail"

.field private static final MAX_WHERE_OR_DEPTH:I = 0xf0

.field private static final REMOTE_CONNECT_TIMEOUT:I = 0x1388

.field private static final REMOTE_FETCH_TIMEOUT:I = 0x1388

.field public static final SHOW_DATE:I = 0x2

.field public static final SHOW_EXACT_TIME:I = 0x1

.field public static final SHOW_TODAY:I = 0x0

.field public static final SMS:Ljava/lang/String; = "SendMSG"

.field private static final TAG:Ljava/lang/String; = "ContactsUtility"

.field public static final VIEW_CONTACT:Ljava/lang/String; = "ViewContact"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3824
    return-void
.end method

.method public static JoinContactsManually(Landroid/content/Context;JJ)V
    .locals 23
    .parameter "context"
    .parameter "source_id"
    .parameter "target_id"

    .prologue
    .line 3139
    const/4 v3, 0x0

    .line 3140
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 3141
    .local v9, c:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3142
    .local v18, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3143
    .local v19, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 3145
    .local v15, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 3146
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 3148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3149
    .local v5, whereClause:Ljava/lang/String;
    const-string v2, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3150
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3151
    if-eqz v9, :cond_3

    .line 3152
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3153
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3154
    .local v10, contact_id:J
    cmp-long v2, v10, p1

    if-nez v2, :cond_1

    .line 3155
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3156
    :cond_1
    cmp-long v2, v10, p3

    if-nez v2, :cond_0

    .line 3157
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3159
    .end local v10           #contact_id:J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3162
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 3163
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3164
    .local v16, sid:J
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 3165
    .local v20, tid:J
    cmp-long v2, v16, v20

    if-eqz v2, :cond_5

    .line 3166
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "aggregation_exceptions_manual"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v6, 0x1

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 3169
    .local v22, updateUri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 3171
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3172
    const-string v2, "raw_contact_id1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3173
    const-string v2, "raw_contact_id2"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3174
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3180
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #sid:J
    .end local v20           #tid:J
    .end local v22           #updateUri:Landroid/net/Uri;
    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3182
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, v4, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3190
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3194
    :cond_7
    :goto_2
    return-void

    .line 3183
    :catch_0
    move-exception v12

    .line 3185
    .local v12, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3190
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 3186
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 3188
    .local v12, e:Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3190
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .end local v12           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method static synthetic access$000(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;I)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static addContactsToGroup(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1263
    .local p2, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    const/4 v3, 0x0

    .line 1272
    :goto_0
    return v3

    .line 1266
    :cond_0
    move-object v0, p1

    .line 1267
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1270
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static addContactsToImportantMailGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1227
    .local p1, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "VIP"

    .line 1228
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1231
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method public static addContactsToImportantMailGroup(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1247
    .local p1, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "VIP"

    .line 1248
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1251
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return-void
.end method

.method public static conjectGivenFamilyName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "givenName"
    .parameter "familyName"
    .parameter "isGivenFamilyOrder"

    .prologue
    .line 262
    const-string v0, " "

    .line 263
    .local v0, diliem:Ljava/lang/String;
    const/4 v1, 0x0

    .line 264
    .local v1, isCJK:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    :cond_0
    const/4 v1, 0x1

    .line 266
    const-string v0, ""

    .line 268
    :cond_1
    const/4 v2, 0x0

    .line 269
    .local v2, name:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 270
    if-eqz p2, :cond_4

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    move-object v2, p0

    .line 284
    :cond_3
    return-object v2

    .line 273
    :cond_4
    if-nez v1, :cond_5

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 278
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    move-object v2, p1

    goto :goto_0
.end method

.method private static cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 4262
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4276
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4267
    :pswitch_1
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4278
    :goto_0
    :pswitch_2
    return-void

    .line 4270
    :pswitch_3
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4273
    :pswitch_4
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 4262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static deleteRawContactPhotoData(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lRawContactId"

    .prologue
    .line 2069
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 2070
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2071
    .local v0, bundleDataId:Landroid/os/Bundle;
    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/ContactsUtility;->isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2073
    const-string v2, "data_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2075
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2077
    .local v1, deleteCount:I
    if-lez v1, :cond_0

    .line 2078
    const/4 v2, 0x1

    .line 2083
    .end local v0           #bundleDataId:Landroid/os/Bundle;
    .end local v1           #deleteCount:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bmSrc"
    .parameter "bmOverlay"

    .prologue
    const/4 v9, 0x0

    .line 3805
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3815
    :cond_0
    :goto_0
    return-void

    .line 3806
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 3807
    .local v4, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3808
    .local v3, nSrcH:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3809
    .local v2, nOverlayW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3810
    .local v1, nOverlayH:I
    if-ge v2, v4, :cond_0

    if-ge v1, v3, :cond_0

    .line 3811
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3812
    .local v0, canvasSrc:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 3813
    .local v5, paintDefault:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v3, v1

    invoke-direct {v7, v9, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "resolver"
    .parameter "displayName"

    .prologue
    const/4 v2, 0x0

    .line 1280
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1281
    .local v10, name:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixStructuredNameComponents?displayName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1283
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1284
    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1286
    .local v8, givenNames:Ljava/lang/String;
    const-string v0, "data5"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1287
    .local v9, middleName:Ljava/lang/String;
    const-string v0, "data3"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1288
    .local v7, familyName:Ljava/lang/String;
    const-string v0, "data2"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const-string v0, "data5"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v0, "data3"

    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .end local v7           #familyName:Ljava/lang/String;
    .end local v8           #givenNames:Ljava/lang/String;
    .end local v9           #middleName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1296
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return-object v10
.end method

.method public static getAddMailToContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "mail"

    .prologue
    .line 718
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 719
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "email_isprimary"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 720
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    return-object v0
.end method

.method public static getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "number"

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    return-object v0
.end method

.method public static getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 14
    .parameter "resolver"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 3473
    if-nez p0, :cond_0

    .line 3490
    :goto_0
    return-object v2

    .line 3474
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3476
    .local v6, bundleIds:Landroid/os/Bundle;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mycontact_ids_cache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3477
    .local v7, cursorMyContact:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 3478
    const/4 v0, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3479
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3480
    .local v10, lMyRawContactId:J
    const-string v0, "contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3481
    .local v8, lMyContactId:J
    cmp-long v0, v12, v10

    if-gez v0, :cond_1

    cmp-long v0, v12, v8

    if-gez v0, :cond_1

    .line 3482
    const-string v0, "_id"

    invoke-virtual {v6, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3483
    const-string v0, "contact_id"

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3486
    .end local v8           #lMyContactId:J
    .end local v10           #lMyRawContactId:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3487
    const/4 v7, 0x0

    :cond_2
    move-object v2, v6

    .line 3490
    goto :goto_0
.end method

.method public static getContactId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "lRawContactId"

    .prologue
    const/4 v3, 0x0

    .line 2098
    const-wide/16 v7, 0x0

    .line 2099
    .local v7, lContactId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2100
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2101
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2102
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2106
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2107
    const/4 v6, 0x0

    .line 2109
    :cond_1
    return-wide v7
.end method

.method public static getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "entity"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v0, contentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1575
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1576
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1577
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1578
    .local v3, mimetype:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1579
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1585
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_1
    return-object v0
.end method

.method public static getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3121
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 3133
    :cond_1
    :goto_0
    return-object v0

    .line 3122
    :cond_2
    const v1, 0x20800d1

    .line 3127
    .local v1, defaultResId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20800d1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3128
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 3129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne p1, v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq p2, v2, :cond_1

    .line 3130
    :cond_3
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, sequence:Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 624
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    return-object p1

    .line 607
    .restart local p1
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "VIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    const v1, 0x2040192

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "Family"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 611
    const v1, 0x2040193

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_4
    if-eqz p1, :cond_5

    const-string v1, "Friends"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 614
    const v1, 0x2040194

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "Coworkers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 617
    const v1, 0x2040195

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_6
    if-eqz p1, :cond_0

    const-string v1, "Frequent Contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const v1, 0x20401d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "groupIsReadonly"

    .prologue
    const/4 v2, 0x1

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, sequence:Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 595
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    return-object p1

    .line 578
    .restart local p1
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "VIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 579
    const v1, 0x2040192

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "Family"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p2, v2, :cond_4

    .line 582
    const v1, 0x2040193

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_4
    if-eqz p1, :cond_5

    const-string v1, "Friends"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p2, v2, :cond_5

    .line 585
    const v1, 0x2040194

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 587
    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "Coworkers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne p2, v2, :cond_6

    .line 588
    const v1, 0x2040195

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_6
    if-eqz p1, :cond_0

    const-string v1, "Frequent Contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    const v1, 0x20401d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bmSrc"
    .parameter "nSize"
    .parameter "bmFacebookIcon"

    .prologue
    .line 2195
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 2196
    :cond_0
    const/4 v1, 0x0

    .line 2226
    :goto_0
    return-object v1

    .line 2198
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2199
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2201
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2202
    .local v8, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 2203
    .local v7, nSrcH:I
    if-ne v8, v7, :cond_2

    .line 2204
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2222
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2223
    .local v4, nFW:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2224
    .local v3, nFH:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    sub-int v12, p1, v3

    invoke-direct {v10, v11, v12, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2207
    .end local v3           #nFH:I
    .end local v4           #nFW:I
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v0, 0x1

    .line 2208
    .local v0, bSrcLandscape:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 2210
    sub-int v9, v8, v7

    div-int/lit8 v5, v9, 0x2

    .line 2211
    .local v5, nOffset:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v5, v7

    invoke-direct {v9, v5, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 2207
    .end local v0           #bSrcLandscape:Z
    .end local v5           #nOffset:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2215
    .restart local v0       #bSrcLandscape:Z
    :cond_4
    sub-int v9, v7, v8

    div-int/lit8 v5, v9, 0x2

    .line 2216
    .restart local v5       #nOffset:I
    const-wide v9, 0x3feb333333333333L

    int-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 2217
    .local v6, nOffsetFacebook:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v6, v8

    invoke-direct {v9, v10, v6, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 561
    const v0, 0x2040190

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getFiltePrefixrWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter "pattern"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, param1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 405
    .local v3, param2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 406
    .local v0, filterWhere:Ljava/lang/String;
    move-object v0, p1

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    const/4 v4, 0x0

    .line 453
    :goto_0
    return-object v4

    .line 412
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 415
    invoke-static {p1}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 419
    :cond_1
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 421
    .local v1, length:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 422
    move-object v2, p1

    .line 424
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    :cond_2
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 431
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 438
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 441
    :cond_5
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 444
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 449
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static final getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter "pattern"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, param1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 329
    .local v3, param2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 330
    .local v0, filterWhere:Ljava/lang/String;
    move-object v0, p1

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    const/4 v4, 0x0

    .line 398
    :goto_0
    return-object v4

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    invoke-static {p1}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    :cond_1
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 345
    .local v1, length:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 346
    move-object v2, p1

    .line 347
    move-object v3, p1

    .line 348
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 349
    :cond_2
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 358
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 370
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 376
    :cond_6
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 380
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 390
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static getFromRemote(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "url"

    .prologue
    .line 2881
    const/4 v0, 0x0

    .line 2885
    .local v0, TEMP_FILE_VERSION:Z
    const/4 v1, 0x1

    .line 2887
    .local v1, VERSION_3:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getFromRemote2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "url"

    .prologue
    .line 2946
    const/4 v4, 0x0

    .line 2948
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x2f

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2949
    .local v3, basename:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2953
    .local v9, encodedUrl:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/data/com.android.providers.contacts/Temp/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2954
    .local v12, namepath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    const-string v18, "/data/data/com.android.providers.contacts/Temp"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2955
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 2956
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2957
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 2960
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 2961
    .local v7, conn:Ljava/net/URLConnection;
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2962
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 2964
    const-wide/16 v14, 0x0

    .line 2965
    .local v14, photoSize:J
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v18

    move/from16 v0, v18

    int-to-long v14, v0

    .line 2967
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 2968
    .local v11, is:Ljava/io/InputStream;
    if-eqz v11, :cond_2

    .line 2969
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2970
    .local v13, out:Ljava/io/FileOutputStream;
    if-eqz v13, :cond_1

    .line 2972
    const-wide/16 v16, 0x0

    .line 2973
    .local v16, size:J
    const/16 v18, 0x800

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 2974
    .local v5, buffer:[B
    :goto_0
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, bytesRead:I
    if-lez v6, :cond_0

    .line 2975
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2976
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    goto :goto_0

    .line 2978
    :cond_0
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 2979
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 2981
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .end local v16           #size:J
    :cond_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 2984
    .end local v13           #out:Ljava/io/FileOutputStream;
    :cond_2
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2985
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2995
    .end local v3           #basename:Ljava/lang/String;
    .end local v7           #conn:Ljava/net/URLConnection;
    .end local v9           #encodedUrl:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #namepath:Ljava/lang/String;
    .end local v14           #photoSize:J
    :goto_1
    return-object v4

    .line 2986
    :catch_0
    move-exception v8

    .line 2987
    .local v8, e:Ljava/io/IOException;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2989
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 2990
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2991
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v8

    .line 2992
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    .line 3012
    const/4 v1, 0x0

    .line 3014
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v8, 0x2f

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3015
    .local v0, basename:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/16 v10, 0x2f

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3019
    .local v4, encodedUrl:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3020
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3021
    .local v6, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 3022
    .local v7, resp:Lorg/apache/http/HttpResponse;
    if-eqz v7, :cond_0

    .line 3025
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 3026
    .local v5, ent:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 3027
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 3040
    .end local v0           #basename:Ljava/lang/String;
    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #encodedUrl:Ljava/lang/String;
    .end local v5           #ent:Lorg/apache/http/HttpEntity;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v1

    .line 3030
    :catch_0
    move-exception v3

    .line 3031
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3032
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v3

    .line 3033
    .local v3, e:Ljava/io/IOException;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3034
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 3035
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3036
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v3

    .line 3037
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "url"
    .parameter "androidHttpClient"

    .prologue
    .line 3043
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3072
    :cond_0
    :goto_0
    return-object v1

    .line 3046
    :cond_1
    const/4 v1, 0x0

    .line 3048
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v7, 0x2f

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3049
    .local v0, basename:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x2f

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3053
    .local v3, encodedUrl:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3054
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 3055
    .local v6, resp:Lorg/apache/http/HttpResponse;
    if-eqz v6, :cond_0

    .line 3058
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 3059
    .local v4, ent:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 3060
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    .line 3063
    .end local v0           #basename:Ljava/lang/String;
    .end local v3           #encodedUrl:Ljava/lang/String;
    .end local v4           #ent:Lorg/apache/http/HttpEntity;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 3064
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3065
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 3066
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3067
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 3068
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3069
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 3070
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getImportantGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 569
    const-string v0, "VIP"

    return-object v0
.end method

.method public static getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 3552
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    .line 3571
    :cond_1
    :goto_0
    return-object v9

    .line 3555
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3556
    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3557
    .local v1, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 3558
    .local v10, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3559
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3560
    .local v9, sMailAddress:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3562
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3564
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3565
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3566
    const/4 v9, 0x0

    .line 3568
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3569
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "values"

    .prologue
    .line 1908
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1909
    .local v2, valuesResult:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    .local v0, mimetype:Ljava/lang/String;
    const-string v3, "mimetype"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1913
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :cond_0
    :goto_0
    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1966
    .local v1, mimetypeResult:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 1968
    .end local v2           #valuesResult:Landroid/content/ContentValues;
    :cond_1
    return-object v2

    .line 1918
    .end local v1           #mimetypeResult:Ljava/lang/String;
    .restart local v2       #valuesResult:Landroid/content/ContentValues;
    :cond_2
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1919
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1924
    :cond_3
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1925
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string v3, "data12"

    const-string v4, "data12"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1928
    :cond_4
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1929
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v3, "data5"

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1932
    :cond_5
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1933
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-string v3, "data7"

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const-string v3, "data8"

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const-string v3, "data9"

    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string v3, "data10"

    const-string v4, "data10"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1939
    :cond_6
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1940
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1943
    :cond_7
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1944
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1945
    :cond_8
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1946
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1948
    :cond_9
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1949
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1951
    :cond_a
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1952
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const-string v3, "data3"

    const-string v4, "data3"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const-string v3, "data5"

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-string v3, "data6"

    const-string v4, "data6"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v3, "data7"

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string v3, "data8"

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string v3, "data9"

    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    :cond_b
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1962
    const-string v3, "data15"

    const-string v4, "data15"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public static final getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1975
    .local p1, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1976
    :cond_0
    const/4 v2, 0x0

    .line 1995
    :cond_1
    :goto_0
    return-object v2

    .line 1978
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1979
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 1980
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1981
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1982
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1983
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1984
    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1985
    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1986
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_3

    .line 1987
    const-string v5, " OR "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1981
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1990
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    const-string v6, " ( "

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1991
    const-string v5, " ) "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1992
    if-lez v4, :cond_1

    .line 1993
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 1028
    const/4 v7, 0x0

    .line 1029
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1030
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1031
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1032
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1034
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1036
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1038
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1041
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 1045
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 1048
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    :cond_3
    return v10

    .line 1041
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 993
    const/4 v7, 0x0

    .line 994
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 995
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 996
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 997
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 999
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1001
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1003
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1006
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1009
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 1010
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 1013
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    :cond_3
    return v10

    .line 1006
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3585
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    .line 3603
    :cond_1
    :goto_0
    return-object v9

    .line 3588
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3589
    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3590
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 3591
    .local v9, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3592
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3594
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3596
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3597
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3598
    const/4 v9, 0x0

    .line 3600
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3601
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3404
    const-string v0, ""

    .line 3406
    .local v0, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 3452
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3410
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3448
    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 3452
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 3412
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3414
    goto :goto_1

    .line 3417
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3419
    goto :goto_1

    .line 3422
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3424
    goto :goto_1

    .line 3428
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3430
    goto :goto_1

    .line 3433
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3435
    goto :goto_1

    .line 3438
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3440
    goto :goto_1

    .line 3443
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3445
    goto :goto_1

    .line 3410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3465
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3466
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3469
    :cond_0
    return-object v0
.end method

.method public static getPhoneNumberTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3342
    const-string v0, ""

    .line 3344
    .local v0, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 3388
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3349
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3384
    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 3388
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 3352
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3353
    goto :goto_1

    .line 3356
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3357
    goto :goto_1

    .line 3360
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3361
    goto :goto_1

    .line 3364
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3365
    goto :goto_1

    .line 3368
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3369
    goto :goto_1

    .line 3372
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3373
    goto :goto_1

    .line 3376
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3377
    goto :goto_1

    .line 3380
    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3381
    goto :goto_1

    .line 3349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    .locals 7
    .parameter "photo"

    .prologue
    const/4 v3, 0x0

    .line 3076
    if-nez p0, :cond_0

    .line 3078
    check-cast v3, [B

    .line 3091
    :goto_0
    return-object v3

    .line 3081
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 3082
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3084
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3085
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 3086
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3087
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 3088
    :catch_0
    move-exception v0

    .line 3089
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    check-cast v3, [B

    goto :goto_0
.end method

.method private static getPhotoByteArray(Landroid/graphics/Bitmap;I)[B
    .locals 7
    .parameter "photo"
    .parameter "jpgQuality"

    .prologue
    const/4 v3, 0x0

    .line 3094
    if-nez p0, :cond_0

    .line 3096
    check-cast v3, [B

    .line 3109
    :goto_0
    return-object v3

    .line 3099
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 3100
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3102
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3103
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 3104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 3106
    :catch_0
    move-exception v0

    .line 3107
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    check-cast v3, [B

    goto :goto_0
.end method

.method public static getReadOnlyContactsType()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 544
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 545
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 546
    .local v0, adapterType:Landroid/content/SyncAdapterType;
    iget-object v9, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 547
    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v6, 0x1

    .line 548
    .local v6, readOnly:Z
    :goto_1
    if-eqz v6, :cond_0

    .line 549
    iget-object v9, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v6           #readOnly:Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 547
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 553
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v3

    .line 554
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 556
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    return-object v7
.end method

.method public static getRelativeDayString(JJ)Ljava/lang/String;
    .locals 22
    .parameter "day"
    .parameter "today"

    .prologue
    .line 1143
    const/4 v12, 0x0

    .line 1145
    .local v12, result:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    .line 1146
    .local v15, tz:Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    .line 1147
    .local v17, tzName:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    .line 1150
    .local v16, tzID:Ljava/lang/String;
    new-instance v14, Landroid/text/format/Time;

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v14, startTime:Landroid/text/format/Time;
    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1152
    new-instance v5, Landroid/text/format/Time;

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v5, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1154
    const-string v18, "tz"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.year: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.month: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.day: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v13

    .line 1158
    .local v13, startDay:I
    iget-wide v0, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1159
    .local v4, currentDay:I
    sub-int v18, v4, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1160
    .local v6, days:I
    cmp-long v18, p2, p0

    if-lez v18, :cond_0

    const/4 v9, 0x1

    .line 1162
    .local v9, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 1163
    .local v10, r:Landroid/content/res/Resources;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_2

    .line 1164
    if-eqz v9, :cond_1

    .line 1165
    const v18, 0x104008a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1185
    :goto_1
    return-object v12

    .line 1160
    .end local v9           #past:Z
    .end local v10           #r:Landroid/content/res/Resources;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1167
    .restart local v9       #past:Z
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_1
    const v18, 0x104008c

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1169
    :cond_2
    if-nez v6, :cond_3

    .line 1170
    const v18, 0x104008b

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1171
    :cond_3
    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v6, v0, :cond_5

    .line 1173
    if-eqz v9, :cond_4

    .line 1174
    const v11, 0x1130004

    .line 1178
    .local v11, resId:I
    :goto_2
    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 1179
    .local v8, format:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1180
    goto :goto_1

    .line 1176
    .end local v8           #format:Ljava/lang/String;
    .end local v11           #resId:I
    :cond_4
    const v11, 0x1130008

    .restart local v11       #resId:I
    goto :goto_2

    .line 1181
    .end local v11           #resId:I
    :cond_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy/MM/dd"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v7, f:Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/util/Date;

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x76c

    move/from16 v19, v0

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Ljava/util/Date;-><init>(III)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method public static getRelativeDayString(JJI)Ljava/lang/String;
    .locals 6
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"

    .prologue
    .line 1081
    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/util/contacts/ContactsUtility;->getRelativeDayString(JJIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeDayString(JJIZ)Ljava/lang/String;
    .locals 20
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"
    .parameter "flagHideThisYear"

    .prologue
    .line 1089
    const/4 v14, 0x0

    .line 1091
    .local v14, result:Ljava/lang/String;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 1092
    .local v16, startTime:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1093
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 1094
    .local v5, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1096
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    .line 1097
    .local v15, startDay:I
    iget-wide v0, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1098
    .local v4, currentDay:I
    sub-int v17, v4, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1099
    .local v8, days:I
    cmp-long v17, p2, p0

    if-lez v17, :cond_1

    const/4 v11, 0x1

    .line 1101
    .local v11, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1102
    .local v12, r:Landroid/content/res/Resources;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_3

    .line 1103
    if-eqz v11, :cond_2

    .line 1104
    const v17, 0x104008a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1139
    :cond_0
    :goto_1
    return-object v14

    .line 1099
    .end local v11           #past:Z
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1106
    .restart local v11       #past:Z
    .restart local v12       #r:Landroid/content/res/Resources;
    :cond_2
    const v17, 0x104008c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1108
    :cond_3
    if-nez v8, :cond_5

    .line 1109
    if-nez p4, :cond_4

    .line 1110
    const v17, 0x104008b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1111
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1112
    invoke-static/range {p0 .. p1}, Landroid/text/format/DateUtils;->timeString(J)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1114
    :cond_5
    const/16 v17, 0x7

    move/from16 v0, v17

    if-gt v8, v0, :cond_7

    .line 1116
    if-eqz v11, :cond_6

    .line 1117
    const v13, 0x1130004

    .line 1121
    .local v13, resId:I
    :goto_2
    invoke-virtual {v12, v13, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    .line 1122
    .local v10, format:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1123
    goto :goto_1

    .line 1119
    .end local v10           #format:Ljava/lang/String;
    .end local v13           #resId:I
    :cond_6
    const v13, 0x1130008

    .restart local v13       #resId:I
    goto :goto_2

    .line 1124
    .end local v13           #resId:I
    :cond_7
    if-nez p5, :cond_8

    .line 1125
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "yyyy/MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v9, f:Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    move-wide/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 1127
    goto :goto_1

    .line 1128
    .end local v9           #f:Ljava/text/SimpleDateFormat;
    :cond_8
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1129
    .local v6, dateDay:Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1130
    .local v7, dateToday:Ljava/util/Date;
    const/4 v9, 0x0

    .line 1131
    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v17

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1132
    new-instance v9, Ljava/text/SimpleDateFormat;

    .end local v9           #f:Ljava/text/SimpleDateFormat;
    const-string v17, "MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1136
    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 1134
    :cond_9
    new-instance v9, Ljava/text/SimpleDateFormat;

    .end local v9           #f:Ljava/text/SimpleDateFormat;
    const-string/jumbo v17, "yyyy/MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    goto :goto_3
.end method

.method public static getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v3, 0x1

    .line 3654
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3655
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3656
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3657
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3658
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3659
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3660
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3662
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3663
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3664
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3668
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3669
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3671
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargeWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3607
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 3608
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3609
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3610
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3611
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3612
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3614
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3615
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3616
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3620
    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3621
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3623
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3630
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 3631
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3632
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3633
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3634
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3635
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3636
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3638
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3639
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3640
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3644
    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3645
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3647
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "bmSrc"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3771
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 3797
    :goto_0
    return-object v5

    .line 3772
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 3773
    .local v12, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 3775
    .local v11, nSrcH:I
    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3776
    .local v5, bmDst:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3777
    .local v6, canvasDst:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3778
    .local v15, paintDefault:Landroid/graphics/Paint;
    int-to-float v0, v12

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v7, v16, v17

    .line 3779
    .local v7, fXratio:F
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v8, v16, v17

    .line 3780
    .local v8, fYratio:F
    cmpg-float v16, v7, v8

    if-gtz v16, :cond_1

    .line 3781
    move v10, v12

    .line 3782
    .local v10, nSrcDrawW:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v9, v0

    .line 3783
    .local v9, nSrcDrawH:I
    sub-int v16, v11, v9

    div-int/lit8 v14, v16, 0x2

    .line 3784
    .local v14, nYoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v14, v9

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 3789
    .end local v9           #nSrcDrawH:I
    .end local v10           #nSrcDrawW:I
    .end local v14           #nYoffset:I
    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v10, v0

    .line 3790
    .restart local v10       #nSrcDrawW:I
    move v9, v11

    .line 3791
    .restart local v9       #nSrcDrawH:I
    sub-int v16, v12, v10

    div-int/lit8 v13, v16, 0x2

    .line 3792
    .local v13, nXoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v13, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;[BI)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "bmSrc"
    .parameter "overlay"
    .parameter "nTargetSize"

    .prologue
    .line 3684
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 3714
    :cond_0
    :goto_0
    return-object v3

    .line 3685
    :cond_1
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3686
    .local v3, bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3687
    .local v4, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 3688
    .local v8, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3689
    .local v7, nSrcH:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 3690
    .local v11, paintDefault:Landroid/graphics/Paint;
    if-ne v8, v7, :cond_2

    .line 3691
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3702
    :goto_1
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_0

    .line 3705
    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3706
    .local v10, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 3707
    .local v9, nW:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 3708
    .local v5, nH:I
    if-eqz v10, :cond_5

    move/from16 v0, p2

    if-ge v9, v0, :cond_5

    move/from16 v0, p2

    if-ge v5, v0, :cond_5

    .line 3709
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    sub-int v15, p2, v5

    move/from16 v0, p2

    invoke-direct {v13, v14, v15, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v10, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3710
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3693
    .end local v5           #nH:I
    .end local v9           #nW:I
    .end local v10           #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v2, 0x1

    .line 3694
    .local v2, bSrcLandscape:Z
    :goto_2
    if-eqz v2, :cond_4

    .line 3695
    sub-int v12, v8, v7

    div-int/lit8 v6, v12, 0x2

    .line 3696
    .local v6, nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v7

    invoke-direct {v12, v6, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3693
    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 3698
    .restart local v2       #bSrcLandscape:Z
    :cond_4
    sub-int v12, v7, v8

    div-int/lit8 v6, v12, 0x2

    .line 3699
    .restart local v6       #nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v8

    invoke-direct {v12, v13, v6, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3714
    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    .restart local v5       #nH:I
    .restart local v9       #nW:I
    .restart local v10       #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3732
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3733
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3724
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3725
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "bmOverlay"

    .prologue
    .line 3743
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3744
    .local v0, bmCenterCrop:Landroid/graphics/Bitmap;
    if-nez p3, :cond_0

    .line 3746
    :goto_0
    return-object v0

    .line 3745
    :cond_0
    invoke-static {v0, p3}, Lcom/htc/util/contacts/ContactsUtility;->drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "overlay"

    .prologue
    .line 3756
    if-eqz p3, :cond_0

    array-length v1, p3

    if-gtz v1, :cond_1

    .line 3757
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3760
    :goto_0
    return-object v1

    .line 3759
    :cond_1
    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3760
    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSocialnetworkAccountType(Ljava/lang/String;)J
    .locals 3
    .parameter "accountType"

    .prologue
    .line 1303
    const-wide/16 v0, 0x0

    .line 1304
    .local v0, lAccountType:J
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    const-wide/16 v0, 0x1

    .line 1313
    :cond_0
    :goto_0
    return-wide v0

    .line 1306
    :cond_1
    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1307
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 1308
    :cond_2
    const-string v2, "com.htc.htctwitter"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1309
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1310
    :cond_3
    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    const-wide/16 v0, 0x2

    goto :goto_0
.end method

.method public static handleSocialNetworkLargePhoto(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 2167
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    if-nez p0, :cond_1

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2169
    :cond_1
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2170
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2171
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 2172
    const-string v2, "ContactsUtility"

    const-string v4, "handleSocialNetworkLargePhoto HandleSocialNetworkLargePhotoHelper.MessageHandler null, return!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    monitor-exit v3

    goto :goto_0

    .line 2186
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2175
    :cond_2
    :try_start_1
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2178
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2179
    long-to-int v2, p1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2180
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2181
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2184
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2185
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2186
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static handleSocialNetworkLargePhotoEnd(Ljava/lang/Runnable;)V
    .locals 8
    .parameter "r"

    .prologue
    .line 2119
    sget-object v5, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2120
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2121
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 2122
    const-string v4, "ContactsUtility"

    const-string v6, "handleSocialNetworkLargePhotoEnd HandleSocialNetworkLargePhotoHelper.MessageHandler null,run r then return!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    move-object v2, p0

    .line 2125
    .local v2, rFinal:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/util/contacts/ContactsUtility$5;

    invoke-direct {v4, v2}, Lcom/htc/util/contacts/ContactsUtility$5;-><init>(Ljava/lang/Runnable;)V

    const-string v6, "handleSocialNetworkLargePhotoEndThread"

    invoke-direct {v3, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2145
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2146
    monitor-exit v5

    .line 2158
    .end local v2           #rFinal:Ljava/lang/Runnable;
    .end local v3           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2148
    :cond_0
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2150
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-static {v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 2151
    .local v0, msg:Landroid/os/Message;
    const/16 v4, 0x37

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2152
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2154
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2155
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v4, 0x32

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2156
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2157
    monitor-exit v5

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static importAccountEmailToMyContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "email"
    .parameter "accountType"

    .prologue
    .line 1317
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/util/contacts/ContactsUtility$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importCsAccountInfoToMyContact(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1419
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    const-string v1, "com.htc.cs"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$2;

    invoke-direct {v0, p1, p0}, Lcom/htc/util/contacts/ContactsUtility$2;-><init>(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 1564
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 1641
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$4;-><init>(Landroid/content/Context;J)V

    .line 1830
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"
    .parameter "rawId"

    .prologue
    const-wide/16 v2, 0x0

    .line 1591
    if-eqz p0, :cond_0

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    cmp-long v1, v2, p3

    if-ltz v1, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$3;

    move-wide v1, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/util/contacts/ContactsUtility$3;-><init>(JLandroid/content/Context;J)V

    .line 1631
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1637
    .local p1, lContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, rawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method private static final isCJKCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 163
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 164
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    const/4 v1, 0x1

    .line 190
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isChineseCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 147
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 148
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 157
    :cond_0
    const/4 v1, 0x1

    .line 159
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isContainCJKWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    const/4 v2, 0x0

    .line 206
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    const/4 v2, 0x0

    .line 198
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 199
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 201
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->isCJKCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    const/4 v2, 0x1

    .line 203
    goto :goto_0

    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final isContainChineseWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    const/4 v2, 0x0

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 214
    :cond_1
    const/4 v2, 0x0

    .line 215
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 218
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->isChineseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    const/4 v2, 0x1

    .line 220
    goto :goto_0

    .line 216
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z
    .locals 6
    .parameter "entity"
    .parameter "mimetypeTarget"

    .prologue
    .line 1889
    const/4 v0, 0x0

    .line 1890
    .local v0, bContain:Z
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1891
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1892
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1893
    .local v3, mimetype:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1894
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1895
    const/4 v0, 0x1

    .line 1899
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_1
    return v0
.end method

.method public static isContainMimeType(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter "mimetypeTarget"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4372
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v0, 0x0

    .line 4373
    .local v0, contain:Z
    if-eqz p0, :cond_1

    .line 4374
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 4375
    .local v1, e:Landroid/content/Entity;
    invoke-static {v1, p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z

    move-result v0

    .line 4376
    if-eqz v0, :cond_0

    .line 4382
    .end local v1           #e:Landroid/content/Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static isDuplicate(Landroid/content/Entity;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "entity"
    .parameter "entryValuesTarget"

    .prologue
    .line 1841
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1842
    .local v6, mimetypeTarget:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1843
    .local v0, entValues:Landroid/content/ContentValues;
    const-string v10, "_id"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1844
    .local v7, rawContactId:J
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity$NamedContentValues;

    .line 1845
    .local v9, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v9, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1846
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v10, "raw_contact_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1848
    const-string v10, "mimetype"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1849
    .local v5, mimetype:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1850
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1853
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/im"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/nickname"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/website"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1864
    :cond_1
    invoke-static {v1}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1865
    .local v3, mimeTypeValues:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1866
    .local v4, mimeTypeValuesTarget:Landroid/content/ContentValues;
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    .line 1881
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v3           #mimeTypeValues:Landroid/content/ContentValues;
    .end local v4           #mimeTypeValuesTarget:Landroid/content/ContentValues;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v9           #subValue:Landroid/content/Entity$NamedContentValues;
    :goto_0
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isDuplicate(Ljava/util/ArrayList;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter
    .parameter "entryValuesTarget"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4356
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v0, 0x0

    .line 4357
    .local v0, dup:Z
    if-eqz p0, :cond_1

    .line 4358
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 4359
    .local v1, e:Landroid/content/Entity;
    invoke-static {v1, p1}, Lcom/htc/util/contacts/ContactsUtility;->isDuplicate(Landroid/content/Entity;Landroid/content/ContentValues;)Z

    move-result v0

    .line 4360
    if-eqz v0, :cond_0

    .line 4365
    .end local v1           #e:Landroid/content/Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z
    .locals 1
    .parameter "locale"

    .prologue
    .line 232
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z
    .locals 11
    .parameter "context"
    .parameter "lRawContactId"
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 2040
    const/4 v6, 0x0

    .line 2041
    .local v6, bHasPhoto:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2042
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2043
    .local v10, sbSelection:Ljava/lang/StringBuilder;
    const-string v0, "mimetype = \'vnd.android.cursor.item/photo\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "contact_id"

    aput-object v5, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2045
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2046
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    const/4 v6, 0x1

    .line 2048
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2049
    .local v8, lDataId:J
    if-eqz p3, :cond_0

    .line 2050
    const-string v0, "data_id"

    invoke-virtual {p3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2055
    .end local v8           #lDataId:J
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2056
    const/4 v7, 0x0

    .line 2058
    :cond_1
    return v6
.end method

.method public static isReadyOnlyContactsType(Ljava/lang/String;)Z
    .locals 9
    .parameter "type"

    .prologue
    .line 465
    const/4 v6, 0x0

    .line 466
    .local v6, readyOnly:Z
    if-eqz p0, :cond_0

    .line 467
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 469
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 470
    .local v7, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v7

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 471
    .local v0, adapterType:Landroid/content/SyncAdapterType;
    iget-object v8, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 472
    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->supportsUploading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x1

    .line 480
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v2           #cs:Landroid/content/IContentService;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #syncs:[Landroid/content/SyncAdapterType;
    :cond_0
    :goto_1
    return v6

    .line 472
    .restart local v0       #adapterType:Landroid/content/SyncAdapterType;
    .restart local v1       #arr$:[Landroid/content/SyncAdapterType;
    .restart local v2       #cs:Landroid/content/IContentService;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #syncs:[Landroid/content/SyncAdapterType;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 470
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 476
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v3

    .line 477
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final isSupportUCS2Filter()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public static isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 12
    .parameter "resolver"
    .parameter "accountType"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 491
    if-nez p1, :cond_0

    .line 536
    :goto_0
    return v10

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 500
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 501
    .local v8, result:Z
    if-eqz v6, :cond_2

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 504
    .local v9, visible:I
    if-lez v9, :cond_4

    move v8, v10

    .line 506
    .end local v9           #visible:I
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_2
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "group_visible"

    aput-object v0, v2, v11

    .line 512
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "My Contacts"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auto_add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    const-string v0, "com.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 522
    if-eqz v6, :cond_3

    .line 524
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 526
    .local v7, mycontactGroupVisible:I
    if-lez v7, :cond_5

    move v8, v10

    .line 532
    .end local v7           #mycontactGroupVisible:I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v10, v8

    .line 536
    goto/16 :goto_0

    .end local v2           #projection:[Ljava/lang/String;
    .restart local v9       #visible:I
    :cond_4
    move v8, v11

    .line 504
    goto :goto_1

    .end local v9           #visible:I
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v7       #mycontactGroupVisible:I
    :cond_5
    move v8, v11

    .line 526
    goto :goto_2

    .line 529
    .end local v7           #mycontactGroupVisible:I
    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    .line 532
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static joinDefaultDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, isCJK:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x1

    .line 253
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/htc/util/contacts/ContactsUtility;->conjectGivenFamilyName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 4284
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4286
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4288
    const/16 v1, 0x1d

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4289
    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4290
    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4291
    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4292
    const/16 v1, 0x21

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4293
    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4294
    const/16 v1, 0x23

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4295
    const/16 v1, 0x24

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4296
    const/16 v1, 0x25

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4297
    const/16 v1, 0x26

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4298
    const/16 v1, 0x27

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4299
    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4300
    const/16 v1, 0x29

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4301
    const/16 v1, 0x2a

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4302
    const/16 v1, 0x2b

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4303
    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4304
    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4305
    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4306
    const/16 v1, 0x2f

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4307
    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4308
    const/16 v1, 0x31

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4309
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4310
    const/16 v1, 0x33

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4311
    const/16 v1, 0x34

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4312
    const/16 v1, 0x35

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4313
    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4315
    return-object v0
.end method

.method private static loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 4238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4240
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4242
    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4243
    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4244
    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4245
    const/16 v1, 0x12

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4246
    const/16 v1, 0x13

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4247
    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4248
    const/16 v1, 0x15

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4249
    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4250
    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4251
    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4252
    const/16 v1, 0x19

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4253
    const/16 v1, 0x1a

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4254
    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4255
    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4256
    const/16 v1, 0x1b

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 4258
    return-object v0
.end method

.method public static parseContactDefaultAction(Landroid/content/ContentResolver;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 17
    .parameter "resolver"
    .parameter "defaultAction"
    .parameter "generateActionUri"

    .prologue
    .line 3235
    const-string v1, "mailto:"

    .line 3236
    .local v1, MAIL_PATTERN:Ljava/lang/String;
    const-string v2, "sms:"

    .line 3237
    .local v2, SMS_PATTERM:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3239
    .local v5, bundle:Landroid/os/Bundle;
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object v15, v5

    .line 3326
    :goto_1
    return-object v15

    .line 3243
    :cond_1
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3245
    .local v6, contactUriBase:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3247
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3248
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "ViewContact"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3252
    :cond_2
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3254
    .local v9, processingDefaultAction:Ljava/lang/String;
    const-string/jumbo v15, "|"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3256
    .local v8, nSaperateIndex:I
    if-gez v8, :cond_3

    .line 3257
    const/4 v15, 0x0

    goto :goto_1

    .line 3259
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3261
    .local v14, tag:Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3264
    const-string/jumbo v15, "|"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3266
    if-gez v8, :cond_4

    .line 3267
    const/4 v15, 0x0

    goto :goto_1

    .line 3269
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3272
    .local v3, action:Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3275
    .local v4, actionUriString:Ljava/lang/String;
    const-string v15, "mailto:"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 3277
    const-string v15, "mailto:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3280
    .local v13, sU:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3281
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "SendMail"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    const-string v15, "action_intent_action"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    if-eqz p2, :cond_0

    .line 3285
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/util/contacts/ContactsUtility;->getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 3286
    .local v10, sMailAddress:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mailto:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3287
    .local v7, mailTo:Ljava/lang/String;
    const-string v15, "action_data"

    invoke-virtual {v5, v15, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3291
    .end local v7           #mailTo:Ljava/lang/String;
    .end local v10           #sMailAddress:Ljava/lang/String;
    .end local v13           #sU:Ljava/lang/String;
    :cond_5
    const-string v15, "sms:"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3293
    const-string v15, "sms:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3295
    .restart local v13       #sU:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3296
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "SendMSG"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    const-string v15, "action_intent_action"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    if-eqz p2, :cond_0

    .line 3300
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/util/contacts/ContactsUtility;->getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 3301
    .local v12, sPhoneNumber:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sms:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3302
    .local v11, sNewUri:Ljava/lang/String;
    const-string v15, "action_data"

    invoke-virtual {v5, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3307
    .end local v11           #sNewUri:Ljava/lang/String;
    .end local v12           #sPhoneNumber:Ljava/lang/String;
    .end local v13           #sU:Ljava/lang/String;
    :cond_6
    const-string v15, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3308
    const-string v15, "mailto:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3309
    .restart local v13       #sU:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3310
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "Dialing"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const-string v15, "action_intent_action"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 13
    .parameter "timeInRfc3339"
    .parameter "calendar"

    .prologue
    const/16 v12, 0xe

    const/16 v4, 0xc

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 3494
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal RFC3339 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3498
    :cond_0
    const-string v10, ""

    .line 3499
    .local v10, processStr:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3500
    .local v8, indexOfT:I
    if-lez v8, :cond_2

    .line 3501
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 3507
    :goto_0
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3515
    .local v11, splitStr:[Ljava/lang/String;
    array-length v9, v11

    .line 3516
    .local v9, numOfItem:I
    const/4 v7, 0x0

    .line 3517
    .local v7, hasYearInfo:Z
    if-ne v9, v6, :cond_3

    .line 3518
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3523
    invoke-virtual {p1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 3524
    const/4 v7, 0x1

    .line 3538
    :cond_1
    :goto_1
    return v7

    .line 3504
    .end local v7           #hasYearInfo:Z
    .end local v9           #numOfItem:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_2
    move-object v10, p0

    goto :goto_0

    .line 3526
    .restart local v7       #hasYearInfo:Z
    .restart local v9       #numOfItem:I
    .restart local v11       #splitStr:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v9, v0, :cond_1

    .line 3530
    const/16 v1, 0x7b2

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3535
    invoke-virtual {p1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 3536
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static queryEditableAccount()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2002
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2003
    .local v6, supportContactAuthorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "com.android.contacts"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    const-string v9, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    const-string v9, "htceas"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    const-string v9, "com.htc.plurk.Users"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    const-string v9, "com.htc.htctwitter.Users"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2011
    .local v0, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 2013
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 2015
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 2016
    .local v7, sync:Landroid/content/SyncAdapterType;
    if-eqz v7, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 2018
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2019
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2024
    .end local v7           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    const-string v9, "com.htc.android.pcsc"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #syncs:[Landroid/content/SyncAdapterType;
    :goto_1
    return-object v0

    .line 2025
    :catch_0
    move-exception v3

    .line 2026
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static queryMissedCallCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 20
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 925
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 926
    .local v7, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gtz v1, :cond_1

    .line 927
    const/4 v9, 0x0

    .line 980
    :cond_0
    :goto_0
    return v9

    .line 929
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 934
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 935
    .local v18, rawContactIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v10, :cond_4

    .line 936
    const-string v1, "mimetype"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 937
    .local v13, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 938
    .local v11, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 939
    .local v15, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 941
    .local v12, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 942
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 943
    .local v17, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 944
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 949
    .end local v17           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 952
    .end local v11           #idxData:I
    .end local v12           #idxDataId:I
    .end local v13           #idxMimetype:I
    .end local v15           #idxRawContactId:I
    :cond_4
    const-string v19, ""

    .line 953
    .local v19, rawIds:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 954
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 955
    .local v16, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 956
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 959
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 964
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6
    const/4 v9, 0x0

    .line 965
    .local v9, count:I
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    const-string v1, "content://call_log/miss_calls_count_by_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_count"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id IN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 968
    if-eqz v10, :cond_0

    .line 970
    :try_start_1
    const-string v1, "_count"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 971
    .local v14, idxMissCount:I
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 972
    int-to-long v1, v9

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v9, v1

    goto :goto_3

    .line 976
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14           #idxMissCount:I
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "profileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4320
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4321
    .local v13, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 4322
    .local v16, lookupUri:Landroid/net/Uri;
    if-nez v16, :cond_0

    move-object v14, v13

    .line 4348
    .end local v13           #entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .local v14, entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_0
    return-object v14

    .line 4323
    .end local v14           #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v13       #entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_0
    const-string v2, "entities"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4324
    .local v3, entityUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4325
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 4327
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4328
    const-wide/16 v8, -0x1

    .line 4329
    .local v8, currentRawContactId:J
    const/4 v15, 0x0

    .line 4330
    .local v15, entity:Landroid/content/Entity;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4331
    .local v12, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4332
    const/16 v2, 0xe

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 4333
    .local v17, rawContactId:J
    cmp-long v2, v17, v8

    if-eqz v2, :cond_1

    .line 4334
    move-wide/from16 v8, v17

    .line 4335
    new-instance v15, Landroid/content/Entity;

    .end local v15           #entity:Landroid/content/Entity;
    invoke-static {v10}, Lcom/htc/util/contacts/ContactsUtility;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 4336
    .restart local v15       #entity:Landroid/content/Entity;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4338
    :cond_1
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4339
    invoke-static {v10}, Lcom/htc/util/contacts/ContactsUtility;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    .line 4340
    .local v11, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 4331
    .end local v11           #data:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 4343
    .end local v17           #rawContactId:J
    :cond_3
    move-object v13, v12

    .line 4345
    .end local v8           #currentRawContactId:J
    .end local v12           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v15           #entity:Landroid/content/Entity;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4346
    const/4 v10, 0x0

    :cond_5
    move-object v14, v13

    .line 4348
    .restart local v14       #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto :goto_0
.end method

.method public static queryUnreadEmailCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 21
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 737
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 738
    .local v8, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    .line 739
    const/4 v10, 0x0

    .line 797
    :cond_0
    :goto_0
    return v10

    .line 741
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 746
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 747
    .local v12, emailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 748
    const-string v1, "mimetype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 749
    .local v15, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 750
    .local v13, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 751
    .local v16, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 753
    .local v14, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 754
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 755
    .local v20, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 761
    .end local v20           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 764
    .end local v13           #idxData:I
    .end local v14           #idxDataId:I
    .end local v15           #idxMimetype:I
    .end local v16           #idxRawContactId:I
    :cond_4
    const/4 v10, 0x0

    .line 765
    .local v10, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v7, addr:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 767
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 768
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 769
    .local v19, mailCount:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xf0

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    .line 770
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 771
    .local v18, mail:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    add-int/lit8 v19, v19, 0x1

    .line 774
    goto :goto_2

    .line 775
    .end local v18           #mail:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 776
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    .line 777
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 779
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 780
    const/4 v1, 0x0

    const-string v2, " _fromEmail in ("

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const/16 v1, 0x29

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    :cond_7
    const-string v1, "content://mail/allmessagesCountUnread"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 785
    if-eqz v11, :cond_0

    .line 787
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 788
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/2addr v10, v1

    .line 792
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static queryUnreadMessageCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 24
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 814
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 815
    .local v8, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    .line 816
    const/4 v10, 0x0

    .line 909
    :cond_0
    :goto_0
    return v10

    .line 818
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 824
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 825
    .local v23, phoneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 826
    .local v12, emailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_5

    .line 827
    const-string v1, "mimetype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 828
    .local v15, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 829
    .local v13, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 830
    .local v16, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 832
    .local v14, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 833
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 834
    .local v20, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 835
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_3
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 843
    .end local v20           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 847
    .end local v13           #idxData:I
    .end local v14           #idxDataId:I
    .end local v15           #idxMimetype:I
    .end local v16           #idxRawContactId:I
    :cond_5
    const/4 v10, 0x0

    .line 848
    .local v10, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v7, addr:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 850
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 851
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 852
    .local v22, phoneCount:I
    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 853
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 854
    .local v21, number:Ljava/lang/String;
    const-string v1, "PHONE_NUMBERS_EQUAL"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const-string v1, "(address,"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-static/range {v21 .. v21}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const/16 v1, 0x29

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 858
    add-int/lit8 v22, v22, 0x1

    .line 859
    const/16 v1, 0xf0

    move/from16 v0, v22

    if-ge v0, v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 860
    :cond_7
    const/16 v22, 0x0

    .line 861
    const/4 v1, 0x0

    const-string v2, " ( "

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v1, " ) AND read = 0 "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const-string v1, " AND ( sms_type=1 OR mms_type=130 OR mms_type=132) "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const-string v1, "content://mms-sms/allmessages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 866
    if-eqz v11, :cond_6

    .line 868
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/2addr v10, v1

    .line 871
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 875
    :cond_8
    const-string v1, " OR "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 879
    .end local v17           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #phoneCount:I
    :cond_9
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 880
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 881
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 882
    .restart local v17       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 883
    .local v19, mailCount:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xf0

    move/from16 v0, v19

    if-ge v0, v1, :cond_a

    .line 884
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 885
    .local v18, mail:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 887
    add-int/lit8 v19, v19, 0x1

    .line 888
    goto :goto_3

    .line 889
    .end local v18           #mail:Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 890
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_b

    .line 891
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 893
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 894
    const/4 v1, 0x0

    const-string v2, " address in ("

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const-string v1, ") AND read = 0 AND msg_type = 0 AND ( mms_type=130 OR mms_type=132 )"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    :cond_c
    const-string v1, "content://mms-sms/allmessages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 899
    if-eqz v11, :cond_0

    .line 901
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    add-int/2addr v10, v1

    .line 904
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static setContactUpdatesAndEventsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "contactUri"

    .prologue
    .line 1197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1198
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1199
    .local v1, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 1200
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1202
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1203
    const-string v5, "is_read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    sget-object v5, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "contact"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    .end local v1           #id:J
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1210
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ContactsUtility"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final setContactsAsFavorite(Landroid/content/ContentResolver;JZ)I
    .locals 6
    .parameter "resolver"
    .parameter "contactId"
    .parameter "isSet"

    .prologue
    .line 629
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 630
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "starred"

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 634
    .local v0, counts:I
    return v0

    .line 631
    .end local v0           #counts:I
    .end local v3           #where:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final setContactsAsFavorite(Landroid/content/ContentResolver;J)Z
    .locals 18
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    .line 643
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 644
    .local v3, uri:Landroid/net/Uri;
    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 645
    .local v13, contactUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 646
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "starred"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const/16 v16, 0x0

    .line 648
    .local v16, result:Z
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 649
    .local v14, count:I
    if-lez v14, :cond_4

    .line 651
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 652
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Starred in Android"

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 658
    .local v10, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 659
    .local v15, gSourceId:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 660
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 663
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 666
    :cond_1
    if-nez v15, :cond_2

    .line 667
    const/4 v2, 0x0

    .line 694
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #gSourceId:Ljava/lang/String;
    :goto_0
    return v2

    .line 670
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #gSourceId:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "com.google"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, selection:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "account_name"

    aput-object v4, v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 680
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 681
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v2, "group_sourceid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-eqz v10, :cond_4

    .line 685
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 686
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 687
    .local v11, cId:J
    const-string v2, "raw_contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 689
    const/16 v16, 0x1

    .line 691
    .end local v11           #cId:J
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v7           #selection:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #gSourceId:Ljava/lang/String;
    :cond_4
    move/from16 v2, v16

    .line 694
    goto/16 :goto_0
.end method

.method public static final spliteDisplayName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter "displayName"

    .prologue
    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 292
    move-object v2, p0

    .line 293
    .local v2, giveName:Ljava/lang/String;
    const-string v1, ""

    .line 296
    .local v1, familyName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 299
    .local v4, length:I
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 300
    .local v3, index:I
    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 301
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 302
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    .end local v3           #index:I
    .end local v4           #length:I
    :cond_0
    :goto_0
    const-string v5, "data2"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v5, "data3"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-object v0

    .line 307
    :cond_1
    :try_start_1
    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 309
    .restart local v4       #length:I
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 310
    .restart local v3       #index:I
    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 311
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 318
    .end local v3           #index:I
    .end local v4           #length:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
