.class public final Lcom/htc/util/calendar/tools/UriTools;
.super Ljava/lang/Object;
.source "UriTools.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.calendar"

.field private static final DEBUG:Z = false

.field private static final EVENTS_ID:I = 0x3

.field private static final EVENT_WITH_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UriTools"

.field private static final THE_EVENT_WITH_GUID_TYPE:I = 0x4

.field private static final UNI_EVENT_WITH_TIME:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    .line 45
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#/EventTime/#/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "uni-event/#/EventTime/#/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "the-event/"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 36
    return-void
.end method

.method private static adjustEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 19
    .parameter "context"
    .parameter "eventUri"

    .prologue
    .line 329
    sget-object v3, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 330
    .local v15, match:I
    const/4 v3, 0x1

    if-eq v15, v3, :cond_1

    const/4 v10, 0x0

    .line 370
    :cond_0
    :goto_0
    return-object v10

    .line 332
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 333
    .local v12, eventId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 334
    .local v16, startTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 335
    .local v7, endTime:J
    const/4 v10, 0x0

    .line 337
    .local v10, desUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 339
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 340
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "events"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 341
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v18, "allDay"

    aput-object v18, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_id="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 346
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    const-string v3, "allDay"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 349
    .local v14, isAllDay:I
    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    .line 350
    invoke-static/range {v16 .. v17}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 351
    .end local v16           #startTime:J
    .local v5, startTime:J
    :try_start_1
    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J

    move-result-wide v7

    :goto_1
    move-wide v3, v12

    .line 354
    invoke-static/range {v3 .. v8}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 362
    .end local v14           #isAllDay:I
    :goto_2
    if-eqz v9, :cond_0

    .line 363
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 356
    .end local v5           #startTime:J
    .restart local v16       #startTime:J
    :cond_2
    const/4 v10, 0x0

    move-wide/from16 v5, v16

    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    goto :goto_2

    .line 358
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v5           #startTime:J
    .restart local v16       #startTime:J
    :catch_0
    move-exception v11

    move-wide/from16 v5, v16

    .line 359
    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    .local v11, e:Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    const/4 v10, 0x0

    .line 362
    if-eqz v9, :cond_0

    .line 363
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 362
    .end local v5           #startTime:J
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v16       #startTime:J
    :catchall_0
    move-exception v3

    move-wide/from16 v5, v16

    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    :goto_4
    if-eqz v9, :cond_3

    .line 363
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 364
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v9, 0x0

    :cond_3
    throw v3

    .line 362
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 358
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v14       #isAllDay:I
    :catch_1
    move-exception v11

    goto :goto_3

    .end local v5           #startTime:J
    .restart local v16       #startTime:J
    :cond_4
    move-wide/from16 v5, v16

    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    goto :goto_1
.end method

.method private static doCheckEventExist(Landroid/content/Context;JJJ)Lcom/htc/util/calendar/EventInstance;
    .locals 19
    .parameter "context"
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 251
    const/16 v16, 0x0

    .line 252
    .local v16, ei:Lcom/htc/util/calendar/EventInstance;
    const-string v17, ""

    .line 253
    .local v17, title:Ljava/lang/String;
    const-string v8, ""

    .line 254
    .local v8, location:Ljava/lang/String;
    const-string v9, ""

    .line 255
    .local v9, description:Ljava/lang/String;
    move-wide/from16 v10, p3

    .line 256
    .local v10, begin:J
    move-wide/from16 v12, p5

    .line 257
    .local v12, end:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 258
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 259
    .local v3, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 261
    .local v14, c:Landroid/database/Cursor;
    const/4 v5, 0x6

    :try_start_0
    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "eventLocation"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "description"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "begin"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "end"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 270
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v7, v17

    .line 272
    .end local v17           #title:Ljava/lang/String;
    .local v7, title:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v5, "title"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 273
    const-string v5, "eventLocation"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    const-string v5, "description"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 275
    const-string v5, "begin"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 276
    const-string v5, "end"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 277
    cmp-long v5, v10, p3

    if-nez v5, :cond_2

    cmp-long v5, v12, p5

    if-nez v5, :cond_2

    .line 278
    new-instance v4, Lcom/htc/util/calendar/EventInstance;

    move-wide/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Lcom/htc/util/calendar/EventInstance;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .local v4, ei:Lcom/htc/util/calendar/EventInstance;
    :goto_0
    if-eqz v14, :cond_1

    .line 287
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 288
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 289
    const/4 v14, 0x0

    .line 294
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event is exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", title:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", begin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 296
    return-object v4

    .line 281
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_2
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_0

    .line 283
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v7           #title:Ljava/lang/String;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v17       #title:Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v7, v17

    .line 284
    .end local v17           #title:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .local v15, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    if-eqz v14, :cond_5

    .line 287
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 288
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 289
    const/4 v14, 0x0

    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_1

    .line 286
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v7           #title:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v17       #title:Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object/from16 v7, v17

    .end local v17           #title:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    :goto_4
    if-eqz v14, :cond_3

    .line 287
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 288
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 289
    const/4 v14, 0x0

    :cond_3
    throw v5

    .line 294
    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 286
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 283
    :catch_1
    move-exception v15

    goto :goto_3

    .restart local v15       #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_1

    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v7           #title:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v17       #title:Ljava/lang/String;
    :cond_6
    move-object/from16 v7, v17

    .end local v17           #title:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto/16 :goto_0
.end method

.method private static doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 23
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 194
    const/16 v17, 0x0

    .line 195
    .local v17, ei:Lcom/htc/util/calendar/EventInstance;
    const-string v10, ""

    .line 196
    .local v10, title:Ljava/lang/String;
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 197
    .local v20, syncAccountType:Ljava/lang/String;
    const-string v3, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 198
    .local v18, gUid:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v20, v6, v3

    const/4 v3, 0x1

    aput-object v18, v6, v3

    .line 199
    .local v6, selectionArgs:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 200
    .local v19, selection:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    const-string v19, "iCalGUID"

    .line 209
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_type = (?) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = (?) AND deleted <> 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 214
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 216
    .local v15, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "_id"

    aput-object v22, v4, v21

    const/16 v21, 0x1

    const-string v22, "title"

    aput-object v22, v4, v21

    const/16 v21, 0x2

    const-string v22, "dtstart"

    aput-object v22, v4, v21

    const/16 v21, 0x3

    const-string v22, "dtend"

    aput-object v22, v4, v21

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 223
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 225
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 226
    .local v8, eventId:J
    const-string v3, "title"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 227
    const-string v3, "dtstart"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 228
    .local v11, begin:J
    const-string v3, "dtend"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 230
    .local v13, end:J
    new-instance v7, Lcom/htc/util/calendar/EventInstance;

    invoke-direct/range {v7 .. v14}, Lcom/htc/util/calendar/EventInstance;-><init>(JLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v8           #eventId:J
    .end local v11           #begin:J
    .end local v13           #end:J
    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .local v7, ei:Lcom/htc/util/calendar/EventInstance;
    :goto_1
    if-eqz v15, :cond_0

    .line 241
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v15, 0x0

    .line 247
    :cond_0
    :goto_2
    return-object v7

    .line 202
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v5           #where:Ljava/lang/String;
    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v17       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const-string v19, "_sync_id"

    goto/16 :goto_0

    .line 204
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    const-string v19, "facebook_source_id"

    goto/16 :goto_0

    .line 207
    :cond_3
    const-string v19, "iCalGUID"

    goto/16 :goto_0

    .line 236
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 237
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v15, :cond_5

    .line 241
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 242
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v15, 0x0

    move-object/from16 v7, v17

    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v7       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_2

    .line 240
    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #ei:Lcom/htc/util/calendar/EventInstance;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_4

    .line 241
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 242
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v15, 0x0

    :cond_4
    throw v3

    .restart local v16       #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v7, v17

    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v7       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_2

    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_6
    move-object/from16 v7, v17

    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v7       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_1
.end method

.method public static generateEventUri(JJJ)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 76
    invoke-static/range {p0 .. p5}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static generateEventUriString(JJJ)Ljava/lang/String;
    .locals 3
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/events/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/EventTime/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 16
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 466
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v14, sb:Ljava/lang/StringBuilder;
    const-string v4, "content://"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.android.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/the-event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/4 v10, 0x0

    .line 472
    .local v10, desUri:Landroid/net/Uri;
    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 473
    .local v3, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 475
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 476
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_sync_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "iCalGUID"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "facebook_source_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 481
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uni-event count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 484
    const-string v4, "account_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, accountType:Ljava/lang/String;
    const-string v4, "_sync_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 486
    .local v15, syncId:Ljava/lang/String;
    const-string v4, "iCalGUID"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 487
    .local v13, iUid:Ljava/lang/String;
    const-string v4, "facebook_source_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 489
    .local v12, facebookId:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 491
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 512
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v15           #syncId:Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_0

    .line 513
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v9, 0x0

    .line 519
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-object v10

    .line 494
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v12       #facebookId:Ljava/lang/String;
    .restart local v13       #iUid:Ljava/lang/String;
    .restart local v15       #syncId:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_0

    .line 497
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 498
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_0

    .line 501
    :cond_3
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_0

    .line 506
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v15           #syncId:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 508
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 509
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    const/4 v10, 0x0

    .line 512
    if-eqz v9, :cond_0

    .line 513
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v9, 0x0

    goto :goto_1

    .line 512
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_5

    .line 513
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 514
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v9, 0x0

    :cond_5
    throw v4
.end method

.method public static generateTheEventUriString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UriTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, ""

    goto :goto_0
.end method

.method public static generateTheEventVCalendarEventTitleUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v2, "content://"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.htc.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vcalendar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const/4 v7, 0x0

    .line 536
    .local v7, desUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "events/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 537
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 539
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 540
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 541
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uni-event count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 544
    const-string v2, "title"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 545
    .local v10, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 547
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 555
    .end local v10           #title:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 558
    const/4 v6, 0x0

    .line 562
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-object v7

    .line 549
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 551
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 552
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    const/4 v7, 0x0

    .line 555
    if-eqz v6, :cond_0

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 558
    const/4 v6, 0x0

    goto :goto_1

    .line 555
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 558
    const/4 v6, 0x0

    :cond_2
    throw v2
.end method

.method public static generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;
    .locals 17
    .parameter "context"
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 572
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v15, sb:Ljava/lang/StringBuilder;
    const-string v4, "content://"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.android.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/uni-event/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/EventTime/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/4 v10, 0x0

    .line 581
    .local v10, desUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 583
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 584
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 585
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_sync_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "iCalGUID"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "facebook_source_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "allDay"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 592
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uni-event count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 595
    const-string v4, "account_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, accountType:Ljava/lang/String;
    const-string v4, "_sync_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 597
    .local v16, syncId:Ljava/lang/String;
    const-string v4, "iCalGUID"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 598
    .local v13, iUid:Ljava/lang/String;
    const-string v4, "facebook_source_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 599
    .local v12, facebookId:Ljava/lang/String;
    const-string v4, "allDay"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 601
    .local v14, isAllDay:I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_1

    .line 602
    invoke-static/range {p3 .. p4}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 611
    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 613
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 614
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 634
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v14           #isAllDay:I
    .end local v16           #syncId:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_0

    .line 635
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 637
    const/4 v9, 0x0

    .line 641
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    return-object v10

    .line 606
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v12       #facebookId:Ljava/lang/String;
    .restart local v13       #iUid:Ljava/lang/String;
    .restart local v14       #isAllDay:I
    .restart local v16       #syncId:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 630
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v14           #isAllDay:I
    .end local v16           #syncId:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 631
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    const/4 v10, 0x0

    .line 634
    if-eqz v9, :cond_0

    .line 635
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 637
    const/4 v9, 0x0

    goto :goto_2

    .line 616
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v12       #facebookId:Ljava/lang/String;
    .restart local v13       #iUid:Ljava/lang/String;
    .restart local v14       #isAllDay:I
    .restart local v16       #syncId:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 617
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 619
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 620
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 623
    :cond_4
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    goto :goto_1

    .line 628
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v14           #isAllDay:I
    .end local v16           #syncId:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 634
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_6

    .line 635
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 636
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 637
    const/4 v9, 0x0

    :cond_6
    throw v4
.end method

.method public static generateUniEventUriString(Landroid/content/Context;JJJ)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 87
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UriTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", s/e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, ""

    goto :goto_0
.end method

.method public static getEventId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 304
    const-wide/16 v1, -0x1

    .line 305
    .local v1, id:J
    sget-object v5, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 306
    .local v3, match:I
    packed-switch v3, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v1

    .line 309
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 310
    .local v4, uriCheck:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 314
    goto :goto_0

    .line 317
    .end local v4           #uriCheck:Landroid/net/Uri;
    :pswitch_2
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    .line 318
    .local v0, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/htc/util/calendar/EventInstance;->getId()J

    move-result-wide v1

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 378
    const/4 v7, 0x0

    .line 379
    .local v7, ei:Lcom/htc/util/calendar/EventInstance;
    const/4 v8, 0x0

    .line 381
    .local v8, eventUri:Landroid/net/Uri;
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 382
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 397
    :goto_0
    :pswitch_0
    if-eqz v8, :cond_0

    .line 398
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 399
    .local v1, eventId:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 400
    .local v3, startTime:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .local v5, endTime:J
    move-object v0, p0

    .line 402
    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExist(Landroid/content/Context;JJJ)Lcom/htc/util/calendar/EventInstance;

    move-result-object v7

    .end local v1           #eventId:J
    .end local v3           #startTime:J
    .end local v5           #endTime:J
    :cond_0
    move-object v0, v7

    .line 405
    :goto_1
    return-object v0

    .line 384
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->adjustEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 385
    goto :goto_0

    .line 388
    :pswitch_2
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 389
    goto :goto_0

    .line 392
    :pswitch_3
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    goto :goto_1

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getEventsUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "eventUri"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 425
    sget-object v4, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 426
    .local v2, match:I
    const/4 v4, 0x3

    if-ne v4, v2, :cond_0

    .line 441
    .end local p1
    :goto_0
    return-object p1

    .line 427
    .restart local p1
    :cond_0
    if-eq v6, v2, :cond_1

    const/4 v4, 0x2

    if-ne v4, v2, :cond_4

    .line 428
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 429
    .local v3, uriCheck:Landroid/net/Uri;
    if-nez v3, :cond_2

    move-object p1, v5

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 432
    .local v0, eventId:J
    cmp-long v4, v0, v7

    if-nez v4, :cond_3

    move-object p1, v5

    goto :goto_0

    .line 433
    :cond_3
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 435
    .end local v0           #eventId:J
    .end local v3           #uriCheck:Landroid/net/Uri;
    :cond_4
    const/4 v4, 0x4

    if-ne v4, v2, :cond_6

    .line 436
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 437
    .restart local v0       #eventId:J
    cmp-long v4, v0, v7

    if-nez v4, :cond_5

    move-object p1, v5

    goto :goto_0

    .line 438
    :cond_5
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .end local v0           #eventId:J
    :cond_6
    move-object p1, v5

    .line 441
    goto :goto_0
.end method

.method public static isEventExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 413
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    .line 415
    .local v0, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isGoogleEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 65
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHTCExchangeEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 52
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHTCPCSyncEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 61
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static offsetToUTCDay(J)J
    .locals 9
    .parameter "localTime"

    .prologue
    const/4 v1, 0x0

    .line 447
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 448
    .local v0, t:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 449
    iget v6, v0, Landroid/text/format/Time;->year:I

    .line 450
    .local v6, y:I
    iget v5, v0, Landroid/text/format/Time;->month:I

    .line 451
    .local v5, m:I
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 453
    .local v4, d:I
    const-string v2, "UTC"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    move v2, v1

    move v3, v1

    .line 454
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 456
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 457
    .local v7, ret:J
    const-string v1, "UriTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offsetToUTCday: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-wide v7
.end method

.method public static toEventInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/calendar/EventInstance;
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 649
    if-nez p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-object v0

    .line 651
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 652
    .local v9, uriValue:Landroid/net/Uri;
    sget-object v10, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 653
    .local v7, match:I
    packed-switch v7, :pswitch_data_0

    .line 669
    :pswitch_0
    const-string v10, "UriTools"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No uri match, Uri : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :pswitch_1
    invoke-static {p0, v9}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 657
    .local v8, uriCheck:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 659
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 660
    .local v1, eventId:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 661
    .local v3, startTime:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 663
    .local v5, endTime:J
    new-instance v0, Lcom/htc/util/calendar/EventInstance;

    invoke-direct/range {v0 .. v6}, Lcom/htc/util/calendar/EventInstance;-><init>(JJJ)V

    goto :goto_0

    .line 666
    .end local v1           #eventId:J
    .end local v3           #startTime:J
    .end local v5           #endTime:J
    .end local v8           #uriCheck:Landroid/net/Uri;
    :pswitch_2
    invoke-static {p0, v9}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 21
    .parameter "context"
    .parameter "uniEvent"

    .prologue
    .line 115
    sget-object v3, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 116
    .local v16, match:I
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 172
    .end local p1
    :goto_0
    return-object p1

    .line 117
    .restart local p1
    :cond_0
    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    const/16 p1, 0x0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v12, 0x0

    .line 121
    .local v12, desUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 122
    .local v14, eventId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 123
    .local v18, startTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 125
    .local v7, endTime:J
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, accountType:Ljava/lang/String;
    const-string v3, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 127
    .local v20, uid:Ljava/lang/String;
    const/16 v17, 0x0

    .line 128
    .local v17, selection:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    const-string v17, "iCalGUID"

    .line 138
    :goto_1
    const/4 v11, 0x0

    .line 140
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "events"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 142
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "allDay"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 148
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 149
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 150
    .local v9, _id:Ljava/lang/Long;
    const-string v3, "allDay"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 152
    .local v15, isAllDay:I
    const/4 v3, 0x1

    if-ne v15, v3, :cond_2

    .line 156
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v5, v18

    invoke-static/range {v3 .. v8}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 164
    .end local v9           #_id:Ljava/lang/Long;
    .end local v15           #isAllDay:I
    :goto_2
    if-eqz v11, :cond_3

    .line 165
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v11, 0x0

    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    move-object/from16 p1, v12

    .line 172
    goto/16 :goto_0

    .line 130
    .end local v11           #c:Landroid/database/Cursor;
    :cond_4
    invoke-static {v10}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    const-string v17, "_sync_id"

    goto :goto_1

    .line 132
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    const-string v17, "facebook_source_id"

    goto/16 :goto_1

    .line 135
    :cond_6
    const-string v17, "iCalGUID"

    goto/16 :goto_1

    .line 158
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 160
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 161
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    const/4 v12, 0x0

    .line 164
    if-eqz v11, :cond_3

    .line 165
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v11, 0x0

    goto :goto_3

    .line 164
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_8

    .line 165
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 166
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v11, 0x0

    :cond_8
    throw v3
.end method
