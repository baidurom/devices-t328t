.class public Lcom/htc/app/FilePickerDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FilePickerDBHelper.java"


# static fields
.field private static final CREATE_FAVORITE_DB:Ljava/lang/String; = "CREATE TABLE Favorite ( id INTEGER PRIMARY KEY autoincrement, file_name text, file_path text, hash_code INTEGER, storage_type text, service_account text, service_type int );"

.field private static final CREATE_FILE_DATA:Ljava/lang/String; = "file_name text, file_path text, hash_code INTEGER, "

.field private static final CREATE_ID:Ljava/lang/String; = " ( id INTEGER PRIMARY KEY autoincrement, "

.field private static final CREATE_LAST_OPEN:Ljava/lang/String; = "last_open bigint, "

.field private static final CREATE_RECENT_DB:Ljava/lang/String; = "CREATE TABLE Recent ( id INTEGER PRIMARY KEY autoincrement, file_name text, file_path text, hash_code INTEGER, last_open bigint, storage_type text, service_account text, service_type int );"

.field private static final CREATE_SERVICE_DATA:Ljava/lang/String; = "service_account text, service_type int );"

.field private static final CREATE_STORAGE_TYPE:Ljava/lang/String; = "storage_type text, "

.field private static final DATABASE_NAME:Ljava/lang/String; = "FilePickerDB.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_OP_CREATE:Ljava/lang/String; = "CREATE TABLE "

.field private static final DB_OP_GETALL:Ljava/lang/String; = "SELECT * FROM "

.field private static final DB_OP_GETALL_FAV:Ljava/lang/String; = "SELECT * FROM Favorite"

.field private static final DB_OP_GETALL_FAV_BY_STORAGETYPE:Ljava/lang/String; = "SELECT * FROM Favorite where storage_type = ? "

.field private static final DB_OP_GETALL_RECENT:Ljava/lang/String; = "SELECT * FROM Recent"

.field private static final DB_OP_GETALL_RECENT_BY_STORAGETYPE:Ljava/lang/String; = "SELECT * FROM Recent where storage_type = ?  order by last_open desc, id desc "

.field private static final DB_TABLE_FAV:Ljava/lang/String; = "Favorite"

.field private static final DB_TABLE_RECENT:Ljava/lang/String; = "Recent"

.field private static final NO_THIS_DATA:I = -0x1

.field private static final QUERY_ORDERBY_CLAUSE:Ljava/lang/String; = " order by last_open desc, id desc "

.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = " where storage_type = ? "

.field static final STORAGE_TYPE_INTERNAL:Ljava/lang/String; = "STORAGE_TYPE_INTERNAL"

.field private static final ShowStorageType_PHONESTORAGE:I = 0x2

.field private static final ShowStorageType_SDCARD:I = 0x3

.field static final TABLE_TYPE_FAV:I = 0x2

.field static final TABLE_TYPE_RECENT:I = 0x1

.field private static final isExternalStorage:Z

.field static sdCardID:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private bIsFavChanged:Z

.field private bIsRecentChanged:Z

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mlock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerDBHelper;->isExternalStorage:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string v0, "FilePickerDB.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerDBHelper;->DEBUG:Z

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    .line 73
    const-string v0, "FilePickerWithDB"

    const-string v1, "#### INIT FilePickerDBHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/htc/app/FilePickerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    invoke-static {}, Lcom/htc/app/FilePickerDBHelper;->getSDCardID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerDBHelper;->sdCardID:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private createContentValues(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8
    .parameter "tableType"
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 379
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 380
    .local v1, newValues:Landroid/content/ContentValues;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 381
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 382
    const-string v4, "file_name"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v4, "file_path"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {p3}, Lcom/htc/app/FilePickerDBHelper;->getStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, storageType:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, hashCode:Ljava/lang/String;
    const-string v4, "hash_code"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 389
    const-string v4, "last_open"

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    :cond_0
    const-string v4, "storage_type"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v4, "service_account"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v4, "service_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    return-object v1
.end method

.method private getDataID(Ljava/lang/String;I)I
    .locals 15
    .parameter "filePath"
    .parameter "tableType"

    .prologue
    .line 350
    const/4 v11, -0x1

    .line 351
    .local v11, id:I
    invoke-static/range {p1 .. p1}, Lcom/htc/app/FilePickerDBHelper;->getStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 352
    .local v14, storageType:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, hashCode:Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Recent"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hash_code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 362
    .local v13, result:Landroid/database/Cursor;
    :goto_0
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v12, v11

    .line 375
    .end local v11           #id:I
    .local v12, id:I
    :goto_1
    return v12

    .line 358
    .end local v12           #id:I
    .end local v13           #result:Landroid/database/Cursor;
    .restart local v11       #id:I
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Favorite"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hash_code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .restart local v13       #result:Landroid/database/Cursor;
    goto :goto_0

    .line 366
    :cond_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 367
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 373
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_2
    move v12, v11

    .line 375
    .end local v11           #id:I
    .restart local v12       #id:I
    goto :goto_1

    .line 370
    .end local v12           #id:I
    .restart local v11       #id:I
    :catch_0
    move-exception v9

    .line 371
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getSDCardID()Ljava/lang/String;
    .locals 11

    .prologue
    .line 398
    const-string v8, "FilePickerWithDB"

    const-string v9, "#### getSDCardID"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/sys/class/mmc_host/mmc1"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v5, input:Ljava/io/File;
    const/4 v2, 0x0

    .line 402
    .local v2, cid_directory:Ljava/lang/String;
    const/4 v4, 0x0

    .line 403
    .local v4, i:I
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 404
    .local v7, sid:[Ljava/io/File;
    const/4 v4, 0x0

    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 405
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmc1:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 406
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, SID:Ljava/lang/String;
    const-string v8, "FilePickerWithDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#### SID of the MMC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v1           #SID:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/sys/block/mmcblk1/device/cid"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 414
    .local v0, CID:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, sd_cid:Ljava/lang/String;
    const-string v8, "FilePickerWithDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#### CID of the MMC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0           #CID:Ljava/io/BufferedReader;
    .end local v6           #sd_cid:Ljava/lang/String;
    .end local v7           #sid:[Ljava/io/File;
    :goto_1
    return-object v6

    .line 404
    .restart local v7       #sid:[Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 417
    .end local v7           #sid:[Ljava/io/File;
    :catch_0
    move-exception v3

    .line 418
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "FilePickerWithDB"

    const-string v9, "#### Can not read SD-card cid"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v6, "error"

    goto :goto_1
.end method

.method private static getStorageType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 424
    sget-boolean v0, Lcom/htc/app/FilePickerDBHelper;->isExternalStorage:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/htc/app/FilePickerDBHelper;->sdCardID:Ljava/lang/String;

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "STORAGE_TYPE_INTERNAL"

    goto :goto_0
.end method

.method static refreshSDCardID()V
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Lcom/htc/app/FilePickerDBHelper;->getSDCardID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerDBHelper;->sdCardID:Ljava/lang/String;

    .line 435
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .parameter "fileName"
    .parameter "filePath"
    .parameter "id"
    .parameter "tableType"

    .prologue
    const/4 v4, 0x0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, which:Ljava/lang/String;
    invoke-direct {p0, p4, p1, p2}, Lcom/htc/app/FilePickerDBHelper;->createContentValues(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 235
    .local v0, updateValue:Landroid/content/ContentValues;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Recent"

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 238
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Favorite"

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method IsFavFilePath(Ljava/lang/String;)Z
    .locals 13
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, bIsFavFilePath:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerDBHelper;->getStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, storageType:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, hashCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hash_code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 331
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    .line 334
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 335
    .local v9, count:I
    if-lez v9, :cond_2

    .line 336
    const/4 v8, 0x1

    .line 339
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 340
    goto :goto_0
.end method

.method clearAll(I)V
    .locals 3
    .parameter "tableType"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 261
    if-ne p1, v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 264
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Recent"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 264
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 270
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    iget-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Favorite"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method delete(Ljava/lang/String;I)I
    .locals 7
    .parameter "filePath"
    .parameter "tableType"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 158
    invoke-static {p1}, Lcom/htc/app/FilePickerDBHelper;->getStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, storageType:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, hashCode:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hash_code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, which:Ljava/lang/String;
    if-ne p2, v5, :cond_0

    .line 165
    iget-object v4, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v4

    .line 166
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 167
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v3, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Recent"

    invoke-virtual {v3, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 175
    :goto_0
    return v3

    .line 167
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v4

    .line 172
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 173
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    iget-object v3, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Favorite"

    invoke-virtual {v3, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 173
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method deleteByID(II)I
    .locals 5
    .parameter "id"
    .parameter "tableType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, which:Ljava/lang/String;
    if-ne p2, v3, :cond_0

    .line 188
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 190
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Recent"

    invoke-virtual {v1, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 190
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 196
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Favorite"

    invoke-virtual {v1, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 196
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method deleteMoreEntries(Ljava/lang/String;I)V
    .locals 4
    .parameter "idList"
    .parameter "tableType"

    .prologue
    const/4 v1, 0x1

    .line 204
    if-ne p2, v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from Recent where Id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, strQuery:Ljava/lang/String;
    const-string v1, "FilePickerWithDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### strQuery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 209
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 210
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 210
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 214
    .end local v0           #strQuery:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from Favorite where Id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0       #strQuery:Ljava/lang/String;
    const-string v1, "FilePickerWithDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### strQuery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 219
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method getAll(I)Landroid/database/Cursor;
    .locals 4
    .parameter "tableType"

    .prologue
    const/4 v3, 0x0

    .line 282
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 283
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 285
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const-string v0, "SELECT * FROM Recent order by last_open desc, id desc "

    .line 288
    .local v0, DB_OP_GETALL_RECENT_ORDER_DESC:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 294
    .end local v0           #DB_OP_GETALL_RECENT_ORDER_DESC:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 285
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 292
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM Favorite"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 292
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method getAllByStorageType(II)Landroid/database/Cursor;
    .locals 4
    .parameter "tableType"
    .parameter "ShowStorageType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, WHERE_CLAUSE:[Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 310
    :goto_0
    if-ne p1, v3, :cond_0

    .line 311
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 312
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 313
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM Recent where storage_type = ?  order by last_open desc, id desc "

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 321
    :goto_1
    return-object v1

    .line 303
    :pswitch_0
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #WHERE_CLAUSE:[Ljava/lang/String;
    const-string v1, "STORAGE_TYPE_INTERNAL"

    aput-object v1, v0, v2

    .line 304
    .restart local v0       #WHERE_CLAUSE:[Ljava/lang/String;
    goto :goto_0

    .line 306
    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #WHERE_CLAUSE:[Ljava/lang/String;
    sget-object v1, Lcom/htc/app/FilePickerDBHelper;->sdCardID:Ljava/lang/String;

    aput-object v1, v0, v2

    .restart local v0       #WHERE_CLAUSE:[Ljava/lang/String;
    goto :goto_0

    .line 313
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v2

    .line 318
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 319
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    iget-object v1, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM Favorite where storage_type = ? "

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 319
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 301
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method insert(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 6
    .parameter "fileName"
    .parameter "filePath"
    .parameter "tableType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    invoke-direct {p0, p3, p1, p2}, Lcom/htc/app/FilePickerDBHelper;->createContentValues(ILjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 119
    .local v1, newValues:Landroid/content/ContentValues;
    invoke-direct {p0, p2, p3}, Lcom/htc/app/FilePickerDBHelper;->getDataID(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 125
    if-ne p3, v4, :cond_0

    .line 126
    iget-object v3, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 128
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Recent"

    invoke-virtual {v2, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 148
    :goto_0
    return-wide v2

    .line 128
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v3

    .line 133
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    .line 134
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    iget-object v2, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Favorite"

    invoke-virtual {v2, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 134
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 139
    :cond_1
    if-ne p3, v4, :cond_2

    .line 140
    iget-object v3, p0, Lcom/htc/app/FilePickerDBHelper;->mlock:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    .line 142
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 144
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/htc/app/FilePickerDBHelper;->update(Ljava/lang/String;Ljava/lang/String;II)I

    .line 148
    :goto_1
    int-to-long v2, v0

    goto :goto_0

    .line 142
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 146
    :cond_2
    const-string v2, "HtcFilePickerDBHelper"

    const-string v3, "[insert]duplicate insert"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method isFavChanged()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/app/FilePickerDBHelper;->bIsFavChanged:Z

    return v0
.end method

.method isRecentChanged()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/app/FilePickerDBHelper;->bIsRecentChanged:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "initDB"

    .prologue
    .line 86
    const-string v0, "CREATE TABLE Favorite ( id INTEGER PRIMARY KEY autoincrement, file_name text, file_path text, hash_code INTEGER, storage_type text, service_account text, service_type int );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "CREATE TABLE Recent ( id INTEGER PRIMARY KEY autoincrement, file_name text, file_path text, hash_code INTEGER, last_open bigint, storage_type text, service_account text, service_type int );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 108
    const-string v0, "DROP TABLE IF EXISTS config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 97
    const-string v0, "DROP TABLE IF EXISTS config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    return-void
.end method

.method query(II)Landroid/database/Cursor;
    .locals 8
    .parameter "id"
    .parameter "tableType"

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Recent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
