.class public Lcom/htc/util/contacts/GroupEntity;
.super Ljava/lang/Object;
.source "GroupEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/GroupEntity$GroupData;,
        Lcom/htc/util/contacts/GroupEntity$RawContactData;,
        Lcom/htc/util/contacts/GroupEntity$AccountData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_APPLY:I = 0x190

.field static final RAW_CONTACT_AccountNameIdx:I = 0x1

.field static final RAW_CONTACT_AccountTypeIdx:I = 0x2

.field static final RAW_CONTACT_CONTACTIdx:I = 0x3

.field static final RAW_CONTACT_DATA_SETIdx:I = 0x5

.field static final RAW_CONTACT_DELETEDIdx:I = 0x4

.field static final RAW_CONTACT_IDIdx:I = 0x0

.field static final TAG:Ljava/lang/String; = "GroupEntity"

.field public static final mSelectionNotShowGooglePlus:Ljava/lang/String; = " ((groups.account_type= \'com.google\' AND (groups.data_set is null or groups.data_set<>\'plus\')) OR ( groups.account_type<>\'com.google\'))"

.field static final sContactProjection:[Ljava/lang/String;

.field static final sGroupProjection:[Ljava/lang/String;

.field static final sRawContactProjection:[Ljava/lang/String;


# instance fields
.field public mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;"
        }
    .end annotation
.end field

.field public mAfterContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mGroupIsReadOnly:I

.field public mGroupsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegData:[B

.field public mPhotoRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sContactProjection:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "account_name"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    .line 1582
    return-void
.end method

.method public static CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "dataSet1"
    .parameter "dataSet2"

    .prologue
    .line 1532
    if-ne p0, p1, :cond_0

    .line 1533
    const/4 v0, 0x1

    .line 1538
    :goto_0
    return v0

    .line 1535
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1536
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1538
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 26
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 911
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 912
    const/4 v2, 0x1

    .line 990
    :goto_0
    return v2

    .line 915
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v21, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v20, 0x0

    .line 917
    .local v20, operation:Landroid/content/ContentProviderOperation;
    const/4 v10, 0x0

    .line 919
    .local v10, applyCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 920
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/contacts/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 921
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 922
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 924
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 925
    .local v16, id:J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 926
    .local v8, accountName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 927
    .local v9, accountType:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 929
    .local v24, sourceId:Ljava/lang/String;
    new-instance v13, Lcom/htc/util/contacts/GroupEntity$AccountData;

    invoke-direct {v13, v8, v9}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .local v13, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 932
    .local v23, rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    new-instance v22, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .local v22, rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/htc/util/contacts/GroupEntity$AccountData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 940
    .local v25, values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    const-string v2, "data1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 944
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 945
    const-string v2, "data5"

    const-string v3, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 950
    .local v18, insertGroupMemberUri:Landroid/net/Uri;
    const-string v2, "data"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 954
    .local v19, insertUri:Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 955
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 956
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    .line 957
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    add-int/lit8 v10, v10, 0x1

    .line 959
    const/16 v2, 0x190

    if-lt v10, v2, :cond_2

    .line 961
    :try_start_0
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 962
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 963
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 964
    :catch_0
    move-exception v14

    .line 965
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 972
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v22           #rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v23           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 974
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v13           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v24           #sourceId:Ljava/lang/String;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 975
    const/4 v12, 0x0

    .line 976
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 978
    :try_start_1
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 979
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 980
    const/4 v10, 0x0

    .line 986
    :cond_6
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 990
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 981
    :catch_1
    move-exception v14

    .line 982
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 983
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 966
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v11       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v13       #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #id:J
    .restart local v18       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v19       #insertUri:Landroid/net/Uri;
    .restart local v22       #rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v23       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v24       #sourceId:Ljava/lang/String;
    .restart local v25       #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private static final broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "groupIsReadOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1244
    .local p2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 1245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    const-string v1, "contact_id_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1248
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1250
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1252
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "groupName"

    .prologue
    .line 1577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1580
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1227
    if-eqz p0, :cond_0

    .line 1228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1231
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1234
    if-eqz p0, :cond_0

    .line 1235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1240
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildDiff(Landroid/content/ContentResolver;)V
    .locals 20
    .parameter "resolver"

    .prologue
    .line 834
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v14, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v14}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 838
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v4, addGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 841
    .local v8, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 842
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 847
    .end local v8           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v15, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 849
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 850
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    .end local v12           #id:J
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v16, removedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-static {v0, v1, v15, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 863
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v5, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 865
    .restart local v12       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 866
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 869
    .end local v12           #id:J
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v6, addedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v5, v6, v2}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 880
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/util/contacts/GroupEntity;->createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v7

    .line 882
    .local v7, bNewGroups:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/htc/util/contacts/GroupEntity;->addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/contacts/GroupEntity;->removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 890
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 891
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v9, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 893
    .local v8, data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    iget-wide v0, v8, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v10, v0

    .line 894
    .local v10, deletedPerson:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 896
    .end local v8           #data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v10           #deletedPerson:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 902
    .end local v9           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 906
    :cond_8
    return-void

    .line 898
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private clearAllGroupIfNoAnyMember(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 1025
    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1026
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1028
    .local v1, hasNoMember:Z
    if-eqz v0, :cond_1

    .line 1029
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1030
    const/4 v1, 0x1

    .line 1031
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1035
    :cond_1
    if-eqz v1, :cond_2

    .line 1036
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->deleteAllGroups(Landroid/content/ContentResolver;)V

    .line 1038
    :cond_2
    return-void
.end method

.method private createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 27
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1051
    .local p2, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v19, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .line 1053
    .local v18, operation:Landroid/content/ContentProviderOperation;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 1055
    .local v26, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v14, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 1057
    .local v8, account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/htc/util/contacts/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1063
    const/16 v25, 0x1

    .line 1064
    .local v25, visible:I
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1065
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 1066
    .local v23, value:Ljava/lang/Integer;
    if-nez v23, :cond_3

    .line 1067
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v25, 0x1

    .line 1068
    :goto_1
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .end local v23           #value:Ljava/lang/Integer;
    :cond_1
    :goto_2
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1076
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v3, "account_type"

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v3, "title"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v3, "notes"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v3, "group_visible"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v3, "group_is_read_only"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1085
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1086
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    .line 1087
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v2, Lcom/htc/util/contacts/GroupEntity$GroupData;

    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Lcom/htc/util/contacts/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1092
    .local v2, data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1067
    .end local v2           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v23       #value:Ljava/lang/Integer;
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 1071
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto :goto_2

    .line 1096
    .end local v8           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v23           #value:Ljava/lang/Integer;
    .end local v25           #visible:I
    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1097
    :cond_5
    const/4 v3, 0x0

    .line 1124
    .end local v15           #i$:Ljava/util/Iterator;
    :goto_3
    return v3

    .line 1100
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_0
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v21

    .line 1101
    .local v21, results:[Landroid/content/ContentProviderResult;
    const/16 v16, 0x0

    .line 1102
    .local v16, index:I
    if-nez v21, :cond_7

    .line 1103
    const/4 v3, 0x0

    goto :goto_3

    .line 1105
    :cond_7
    move-object/from16 v9, v21

    .local v9, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    aget-object v20, v9, v15

    .line 1106
    .local v20, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 1107
    .local v22, uri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 1108
    .local v12, gid:J
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1109
    .restart local v2       #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    if-eqz v2, :cond_8

    .line 1110
    iput-wide v12, v2, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1112
    :cond_8
    add-int/lit8 v16, v16, 0x1

    .line 1105
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1114
    .end local v2           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v9           #arr$:[Landroid/content/ContentProviderResult;
    .end local v12           #gid:J
    .end local v15           #i$:I
    .end local v16           #index:I
    .end local v17           #len$:I
    .end local v20           #resultData:Landroid/content/ContentProviderResult;
    .end local v21           #results:[Landroid/content/ContentProviderResult;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1116
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1117
    const/4 v3, 0x0

    goto :goto_3

    .line 1118
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 1120
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1121
    const/4 v3, 0x0

    goto :goto_3

    .line 1124
    .end local v11           #e:Landroid/content/OperationApplicationException;
    .restart local v9       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v15       #i$:I
    .restart local v16       #index:I
    .restart local v17       #len$:I
    .restart local v21       #results:[Landroid/content/ContentProviderResult;
    :cond_9
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private deleteAllGroups(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 1043
    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method private dumpContactList()V
    .locals 3

    .prologue
    .line 823
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAfterContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;
    .locals 29
    .parameter "resolver"
    .parameter "targetName"

    .prologue
    .line 265
    sget-object v28, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    .local v28, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 267
    .local v24, pattern:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "deleted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, selection:Ljava/lang/String;
    const/16 v22, 0x0

    .line 269
    .local v22, iterator:Landroid/content/EntityIterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v18, groupsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupDelta;>;"
    new-instance v17, Lcom/htc/util/contacts/GroupEntity;

    invoke-direct/range {v17 .. v17}, Lcom/htc/util/contacts/GroupEntity;-><init>()V

    .line 272
    .local v17, groupEntity:Lcom/htc/util/contacts/GroupEntity;
    const-string v2, "content://com.android.contacts/groups_raw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 275
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 276
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 277
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 278
    .local v21, idIdx:I
    const-string v2, "account_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 279
    .local v9, accountNameIdx:I
    const-string v2, "account_type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 280
    .local v10, accountTypeIdx:I
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 281
    .local v27, titleIdx:I
    const-string v2, "sourceid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 282
    .local v26, sourceIdIdx:I
    const-string v2, "system_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 283
    .local v8, SystemIdIdx:I
    const-string v2, "notes"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 284
    .local v23, notesIdx:I
    const-string v2, "deleted"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 285
    .local v15, deletedIdx:I
    const-string v2, "photo"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 289
    .local v25, photoIdx:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    new-instance v16, Lcom/htc/util/contacts/GroupDelta;

    invoke-direct/range {v16 .. v16}, Lcom/htc/util/contacts/GroupDelta;-><init>()V

    .line 292
    .local v16, delta:Lcom/htc/util/contacts/GroupDelta;
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 293
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 294
    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 295
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 297
    const-string v2, "com.htc.android.myphonebook"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 299
    .local v11, bytes:[B
    if-eqz v11, :cond_1

    array-length v2, v11

    if-lez v2, :cond_1

    .line 300
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 305
    .end local v11           #bytes:[B
    :cond_1
    :goto_1
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/htc/util/contacts/GroupDelta;->mId:J

    .line 306
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/util/contacts/GroupDelta;->mIsDeleted:I

    .line 307
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 309
    .restart local v11       #bytes:[B
    if-eqz v11, :cond_2

    array-length v2, v11

    if-lez v2, :cond_2

    .line 310
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mBitmap:Landroid/graphics/Bitmap;

    .line 313
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v14, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-direct {v14, v2, v4}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v14, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 320
    .end local v11           #bytes:[B
    .end local v14           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v16           #delta:Lcom/htc/util/contacts/GroupDelta;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 303
    .restart local v16       #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_3
    :try_start_1
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mNotes:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 320
    .end local v16           #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 324
    .end local v8           #SystemIdIdx:I
    .end local v9           #accountNameIdx:I
    .end local v10           #accountTypeIdx:I
    .end local v15           #deletedIdx:I
    .end local v21           #idIdx:I
    .end local v23           #notesIdx:I
    .end local v25           #photoIdx:I
    .end local v26           #sourceIdIdx:I
    .end local v27           #titleIdx:I
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 325
    const/16 v17, 0x0

    .line 343
    .end local v17           #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :goto_2
    return-object v17

    .line 328
    .restart local v17       #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 329
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    .line 331
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 332
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 333
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 336
    .local v19, id:J
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 339
    .end local v19           #id:J
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/htc/util/contacts/GroupEntity;
    .locals 31
    .parameter "resolver"
    .parameter "targetName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 170
    sget-object v28, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 172
    .local v28, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 173
    .local v7, selectionArg:[Ljava/lang/String;
    const-string v6, "title= ?  AND deleted = 0 "

    .line 175
    .local v6, selection:Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v7, v3

    .line 177
    const/16 v23, 0x0

    .line 178
    .local v23, iterator:Landroid/content/EntityIterator;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v19, groupsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupDelta;>;"
    new-instance v18, Lcom/htc/util/contacts/GroupEntity;

    invoke-direct/range {v18 .. v18}, Lcom/htc/util/contacts/GroupEntity;-><init>()V

    .line 181
    .local v18, groupEntity:Lcom/htc/util/contacts/GroupEntity;
    const-string v3, "content://com.android.contacts/groups_raw"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 184
    .local v4, queryUri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 185
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_5

    .line 186
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 187
    .local v22, idIdx:I
    const-string v3, "account_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 188
    .local v10, accountNameIdx:I
    const-string v3, "account_type"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 189
    .local v11, accountTypeIdx:I
    const-string v3, "title"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 190
    .local v27, titleIdx:I
    const-string v3, "sourceid"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 191
    .local v26, sourceIdIdx:I
    const-string v3, "system_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 192
    .local v9, SystemIdIdx:I
    const-string v3, "notes"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 193
    .local v24, notesIdx:I
    const-string v3, "deleted"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 194
    .local v16, deletedIdx:I
    const-string v3, "photo"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 198
    .local v25, photoIdx:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 200
    new-instance v17, Lcom/htc/util/contacts/GroupDelta;

    invoke-direct/range {v17 .. v17}, Lcom/htc/util/contacts/GroupDelta;-><init>()V

    .line 201
    .local v17, delta:Lcom/htc/util/contacts/GroupDelta;
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 202
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 203
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 204
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 206
    const-string v3, "com.htc.android.myphonebook"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 208
    .local v12, bytes:[B
    if-eqz v12, :cond_1

    array-length v3, v12

    if-lez v3, :cond_1

    .line 209
    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 214
    .end local v12           #bytes:[B
    :cond_1
    :goto_1
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/htc/util/contacts/GroupDelta;->mId:J

    .line 215
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/htc/util/contacts/GroupDelta;->mIsDeleted:I

    .line 216
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 218
    .restart local v12       #bytes:[B
    if-eqz v12, :cond_2

    array-length v3, v12

    if-lez v3, :cond_2

    .line 219
    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mBitmap:Landroid/graphics/Bitmap;

    .line 222
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v15, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-direct {v15, v3, v5}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v15, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 229
    .end local v12           #bytes:[B
    .end local v15           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v17           #delta:Lcom/htc/util/contacts/GroupDelta;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 212
    .restart local v17       #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_3
    :try_start_1
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mNotes:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 229
    .end local v17           #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v9           #SystemIdIdx:I
    .end local v10           #accountNameIdx:I
    .end local v11           #accountTypeIdx:I
    .end local v16           #deletedIdx:I
    .end local v22           #idIdx:I
    .end local v24           #notesIdx:I
    .end local v25           #photoIdx:I
    .end local v26           #sourceIdIdx:I
    .end local v27           #titleIdx:I
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 234
    const/16 v18, 0x0

    .line 252
    .end local v18           #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :goto_2
    return-object v18

    .line 237
    .restart local v18       #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 238
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    .line 239
    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    .line 240
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 241
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_9

    .line 242
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 244
    :cond_7
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 245
    .local v20, id:J
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 248
    .end local v20           #id:J
    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_9
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private static getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .parameter "columnName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 458
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 459
    :cond_0
    const-string v4, "0"

    .line 475
    :goto_0
    return-object v4

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 463
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 464
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 465
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 466
    .local v2, id:J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 467
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_2

    .line 468
    const-string v6, " ,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    .end local v2           #id:J
    :cond_3
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v6, " ) "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getNameWhereWithArgMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    const-string v0, " ( title= ? ) "

    return-object v0
.end method

.method public static getWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWhere(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "And "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertNewGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "context"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, p1, p2, p3}, Lcom/htc/util/contacts/GroupEntity;->insertNewGroupInner(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1260
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 1261
    invoke-static {p0}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;)V

    .line 1263
    :cond_0
    return v0
.end method

.method private static insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .parameter "resolver"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1165
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    .line 1168
    .local v16, visible:I
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1170
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v2, "notes"

    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v2, "account_type"

    move-object/from16 v0, p4

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v2, "should_sync"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    const-string v2, "group_visible"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    const-string v2, "group_is_read_only"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-wide/16 v9, -0x1

    .line 1187
    .local v9, gId:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1188
    .local v13, sbSelection:Ljava/lang/StringBuilder;
    const-string v2, "account_name"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    const-string v2, "account_type"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    const-string v2, "title"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const-string v2, "notes"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    const-string v2, " = ? "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    const/4 v2, 0x1

    aput-object p4, v6, v2

    const/4 v2, 0x2

    aput-object p5, v6, v2

    const/4 v2, 0x3

    aput-object p5, v6, v2

    .line 1198
    .local v6, selectionArgs:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1199
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1200
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1203
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1205
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v9

    if-lez v2, :cond_2

    .line 1206
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1207
    .local v11, groupUri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1211
    .end local v11           #groupUri:Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1212
    .local v12, rawContactUri:Landroid/net/Uri;
    const-string v2, "data"

    invoke-static {v12, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1214
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1215
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v2, "data1"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1218
    if-eqz p4, :cond_3

    const-string v2, "com.google"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1219
    const-string v2, "data5"

    const-string v3, "1"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1223
    const/4 v2, 0x1

    return v2

    .line 1165
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #gId:J
    .end local v12           #rawContactUri:Landroid/net/Uri;
    .end local v13           #sbSelection:Ljava/lang/StringBuilder;
    .end local v14           #uri:Landroid/net/Uri;
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v16           #visible:I
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static insertNewGroupForARawContact(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/htc/util/contacts/GroupEntity;->insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 1154
    .local v7, result:Z
    if-eqz v7, :cond_0

    .line 1155
    invoke-static {p0, p5, p6}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1157
    :cond_0
    return v7
.end method

.method private static insertNewGroupInner(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 43
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1277
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v34, 0x0

    .line 1278
    .local v34, result:Z
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v32, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    .local v31, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    const/16 v26, 0x0

    .line 1284
    .local v26, jpegData:[B
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1285
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v37, v6, 0x4

    .line 1286
    .local v37, size:I
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1287
    .local v30, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v7, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1289
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1290
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    .line 1291
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1292
    const/16 v30, 0x0

    .line 1296
    .end local v30           #out:Ljava/io/ByteArrayOutputStream;
    .end local v37           #size:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v32

    move-object/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1304
    :goto_1
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 1306
    .local v42, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v29, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v28, 0x0

    .line 1310
    .local v28, operation:Landroid/content/ContentProviderOperation;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v20, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 1312
    .local v11, account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/htc/util/contacts/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1315
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1316
    .local v40, values:Landroid/content/ContentValues;
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1317
    const-string v6, "account_name"

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v6, "account_type"

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_2
    const-string v6, "title"

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v6, "notes"

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const/16 v41, 0x1

    .line 1325
    .local v41, visible:I
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1326
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 1327
    .local v39, value:Ljava/lang/Integer;
    if-nez v39, :cond_7

    .line 1328
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v41, 0x1

    .line 1329
    :goto_3
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    .end local v39           #value:Ljava/lang/Integer;
    :cond_3
    :goto_4
    const-string v6, "should_sync"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    const-string v6, "group_visible"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    if-eqz v26, :cond_4

    .line 1340
    const-string v6, "photo"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1344
    :cond_4
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 1345
    .local v14, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1346
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1347
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    new-instance v5, Lcom/htc/util/contacts/GroupEntity$GroupData;

    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v8, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    const-wide/16 v9, -0x1

    invoke-direct/range {v5 .. v10}, Lcom/htc/util/contacts/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1352
    .local v5, data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1300
    .end local v5           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v11           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v28           #operation:Landroid/content/ContentProviderOperation;
    .end local v29           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v41           #visible:I
    .end local v42           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    new-instance v16, Lcom/htc/util/contacts/GroupEntity$AccountData;

    const-string v6, "pcsc"

    const-string v7, "com.htc.android.pcsc"

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    .local v16, gData:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1328
    .end local v16           #gData:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v11       #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v20       #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v28       #operation:Landroid/content/ContentProviderOperation;
    .restart local v29       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v39       #value:Ljava/lang/Integer;
    .restart local v40       #values:Landroid/content/ContentValues;
    .restart local v41       #visible:I
    .restart local v42       #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/16 v41, 0x0

    goto :goto_3

    .line 1332
    :cond_7
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v41

    goto :goto_4

    .line 1356
    .end local v11           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v39           #value:Ljava/lang/Integer;
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v41           #visible:I
    :cond_8
    :try_start_1
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v36

    .line 1357
    .local v36, results:[Landroid/content/ContentProviderResult;
    if-nez v36, :cond_9

    .line 1358
    const/4 v6, 0x0

    .line 1449
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    :goto_5
    return v6

    .line 1360
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v36       #results:[Landroid/content/ContentProviderResult;
    :cond_9
    const/16 v23, 0x0

    .line 1361
    .local v23, index:I
    move-object/from16 v13, v36

    .local v13, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v13

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    aget-object v35, v13, v21

    .line 1362
    .local v35, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v38, v0

    .line 1363
    .local v38, uri:Landroid/net/Uri;
    invoke-static/range {v38 .. v38}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 1364
    .local v18, gid:J
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1365
    .restart local v5       #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    if-eqz v5, :cond_a

    .line 1366
    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1368
    :cond_a
    add-int/lit8 v23, v23, 0x1

    .line 1361
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1370
    .end local v5           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v18           #gid:J
    .end local v35           #resultData:Landroid/content/ContentProviderResult;
    .end local v38           #uri:Landroid/net/Uri;
    :cond_b
    const/16 v34, 0x1

    .line 1390
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 1393
    const/4 v12, 0x0

    .line 1395
    .local v12, applyCount:I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v21           #i$:I
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1396
    .local v17, gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 1397
    .local v33, rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/contacts/GroupEntity$GroupData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1398
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1399
    .restart local v40       #values:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v6, "raw_contact_id"

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1401
    const-string v6, "data1"

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1403
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1404
    const-string v6, "data5"

    const-string v7, "1"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_e
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 1408
    .local v24, insertGroupMemberUri:Landroid/net/Uri;
    const-string v6, "data"

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 1411
    .local v25, insertUri:Landroid/net/Uri;
    const/16 v34, 0x1

    .line 1415
    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 1416
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1417
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1418
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    add-int/lit8 v12, v12, 0x1

    .line 1420
    const/16 v6, 0x190

    if-lt v12, v6, :cond_d

    .line 1422
    :try_start_2
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1424
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1425
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1371
    .end local v12           #applyCount:I
    .end local v13           #arr$:[Landroid/content/ContentProviderResult;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #index:I
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v27           #len$:I
    .end local v33           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    .end local v40           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 1373
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1374
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1375
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 1377
    .local v15, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1378
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1426
    .end local v15           #e:Landroid/content/OperationApplicationException;
    .restart local v12       #applyCount:I
    .restart local v13       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v17       #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v23       #index:I
    .restart local v24       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v25       #insertUri:Landroid/net/Uri;
    .restart local v27       #len$:I
    .restart local v33       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v36       #results:[Landroid/content/ContentProviderResult;
    .restart local v40       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v15

    .line 1427
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    .line 1436
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v17           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v33           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 1438
    :try_start_3
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1440
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1441
    const/4 v12, 0x0

    .line 1447
    :cond_10
    :goto_8
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    move/from16 v6, v34

    .line 1449
    goto/16 :goto_5

    .line 1442
    :catch_3
    move-exception v15

    .line 1443
    .restart local v15       #e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 1444
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v6

    goto :goto_8

    .line 1428
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v17       #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v24       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v25       #insertUri:Landroid/net/Uri;
    .restart local v33       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v40       #values:Landroid/content/ContentValues;
    :catch_5
    move-exception v6

    goto/16 :goto_7

    .line 1293
    .end local v12           #applyCount:I
    .end local v13           #arr$:[Landroid/content/ContentProviderResult;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v20           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #index:I
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v27           #len$:I
    .end local v28           #operation:Landroid/content/ContentProviderOperation;
    .end local v29           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v33           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v42           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v30       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v37       #size:I
    :catch_6
    move-exception v6

    goto/16 :goto_0
.end method

.method private static isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    const/4 v0, 0x1

    .line 1129
    if-nez p1, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1133
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, inContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    .local p4, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    const-string v5, "contact_id IN (  "

    .line 360
    .local v5, selection:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 362
    .local v12, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 363
    .local v21, size:I
    if-eqz p2, :cond_0

    if-nez v21, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 368
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 369
    .local v13, cid:J
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 371
    add-int/lit8 v2, v21, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 372
    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 375
    .end local v13           #cid:J
    :cond_3
    const-string v2, " )  "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/contacts/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 379
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v20, rawContactlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    if-eqz v15, :cond_7

    .line 383
    :cond_4
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 385
    .local v10, rawId:J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, account_name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, account_type:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    .local v9, dataSet:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 392
    .local v18, idDelete:I
    if-gtz v18, :cond_4

    .line 396
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/htc/util/contacts/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 400
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 401
    new-instance v6, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    invoke-direct/range {v6 .. v11}, Lcom/htc/util/contacts/GroupEntity$RawContactData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 402
    .local v6, rawdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v6           #rawdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    :cond_5
    new-instance v16, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v16, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 406
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 409
    .end local v7           #account_name:Ljava/lang/String;
    .end local v8           #account_type:Ljava/lang/String;
    .end local v9           #dataSet:Ljava/lang/String;
    .end local v10           #rawId:J
    .end local v16           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v18           #idDelete:I
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_7
    if-eqz p3, :cond_8

    .line 413
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 415
    :cond_8
    if-eqz p4, :cond_0

    .line 416
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 347
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 348
    .local v1, attachuri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 349
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 350
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 351
    sget-object v2, Lcom/htc/util/contacts/GroupEntity;->sContactProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 352
    .local v7, c:Landroid/database/Cursor;
    return-object v7
.end method

.method private removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    const-string v7, "content://com.android.contacts/groups_member/name"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 998
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, pattern:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1001
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    const-string v4, "raw_contact_id IN ( "

    .line 1005
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1006
    .local v5, size:I
    if-gtz v5, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1010
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 1011
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 1012
    .local v1, data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1013
    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_1

    .line 1014
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1010
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1017
    .end local v1           #data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1018
    const-string v7, "  AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V
    .locals 20
    .parameter "context"
    .parameter
    .parameter
    .parameter "newPhoto"
    .parameter "bChangePhoto"
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
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, toBeAddedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toBeRemovedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v3, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 482
    .local v8, id:Ljava/lang/Long;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    .end local v8           #id:Ljava/lang/Long;
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v12, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 487
    .restart local v8       #id:Ljava/lang/Long;
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 495
    .end local v8           #id:Ljava/lang/Long;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 510
    .local v13, resolver:Landroid/content/ContentResolver;
    sget-object v15, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 513
    .local v15, updateUri:Landroid/net/Uri;
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/htc/util/contacts/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 514
    .local v17, where:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 515
    .local v16, values:Landroid/content/ContentValues;
    const-string v18, "starred"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 518
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 519
    const-string v18, "starred"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/htc/util/contacts/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 521
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 525
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 526
    sget-object v15, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    mul-int v18, v18, v19

    mul-int/lit8 v14, v18, 0x4

    .line 528
    .local v14, size:I
    if-lez v14, :cond_4

    .line 529
    const/4 v10, 0x0

    .line 530
    .local v10, jpegData:[B
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 531
    .local v11, out:Ljava/io/ByteArrayOutputStream;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v19, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 533
    :try_start_0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 534
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 535
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 536
    if-eqz v10, :cond_2

    .line 537
    const-string v18, "photo"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_2
    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 550
    .end local v10           #jpegData:[B
    .end local v11           #out:Ljava/io/ByteArrayOutputStream;
    .end local v14           #size:I
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 551
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v5, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 553
    .local v4, data:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 554
    .local v6, deletedPerson:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 544
    .end local v4           #data:Ljava/lang/Long;
    .end local v5           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #deletedPerson:I
    .restart local v14       #size:I
    :cond_4
    sget-object v15, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 545
    const-string v19, "photo"

    const/16 v18, 0x0

    check-cast v18, [B

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 546
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 556
    .end local v14           #size:I
    .restart local v5       #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const-string v18, "Favorite_8656150684447252476_6727701920173350445"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 562
    .end local v5           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    return-void

    .line 559
    :cond_6
    new-instance v9, Landroid/content/Intent;

    const-string v18, "anddroid.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 539
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v10       #jpegData:[B
    .restart local v11       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #size:I
    :catch_0
    move-exception v18

    goto :goto_2
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "resolver"
    .parameter "newTitle"

    .prologue
    .line 776
    const-string v3, "content://com.android.contacts/group_with_favorite"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 777
    .local v1, updateGroupUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 778
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 779
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/contacts/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 781
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 784
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 786
    :cond_1
    return-void
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "resolver"
    .parameter "newTitle"
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    .line 789
    const-string v6, "content://com.android.contacts/group_with_favorite"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 791
    .local v4, updateGroupUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 792
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 793
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/util/contacts/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 795
    const-string v6, "title"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    const/4 v0, 0x0

    .line 799
    .local v0, jpegData:[B
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 800
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    mul-int/lit8 v3, v6, 0x4

    .line 801
    .local v3, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 802
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v8, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    invoke-virtual {p3, v6, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 804
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 805
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 806
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 807
    if-eqz v0, :cond_1

    .line 808
    const-string v6, "photo"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 817
    invoke-virtual {p1, v4, v5, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 819
    :cond_2
    return-void

    .line 814
    :cond_3
    const-string v8, "photo"

    move-object v6, v7

    check-cast v6, [B

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 810
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 761
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-nez v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 769
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 771
    invoke-direct {v0, p0, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 729
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 737
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 738
    if-eqz p5, :cond_1

    .line 739
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 741
    :cond_1
    invoke-direct {v0, p0, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 695
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 696
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 699
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 704
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 707
    invoke-direct {v0, v1, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "groupIsReadOnly"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 626
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p3, p5}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 627
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 630
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 635
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 638
    invoke-direct {v0, v1, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 658
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-static {v1, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 664
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 667
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 672
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 673
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 674
    if-eqz p5, :cond_2

    .line 675
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 677
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
    .parameter "groupIsReadOnly"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 582
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-static {v1, p3, p6}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 588
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 591
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 596
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 597
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 598
    if-eqz p5, :cond_2

    .line 599
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 601
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public removeContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method
