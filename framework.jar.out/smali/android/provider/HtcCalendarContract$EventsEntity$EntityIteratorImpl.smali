.class Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "HtcCalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcCalendarContract$EventsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD:I = 0x1

.field private static final COLUMN_MINUTES:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EXTENDED_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1330
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "minutes"

    aput-object v1, v0, v3

    const-string/jumbo v1, "method"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 1337
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v5

    const-string v1, "attendeeType"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1349
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 1
    .parameter "cursor"
    .parameter "provider"

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1371
    iput-object p2, p0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1372
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1363
    iput-object p2, p0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1365
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 16
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1378
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1379
    .local v10, eventId:J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1380
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    const-string v1, "calendar_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1382
    const-string/jumbo v1, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1383
    const-string v1, "description"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1384
    const-string v1, "eventLocation"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1385
    const-string v1, "eventStatus"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v1, "selfAttendeeStatus"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1387
    const-string v1, "dtstart"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1388
    const-string v1, "dtend"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1389
    const-string v1, "duration"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1390
    const-string v1, "eventTimezone"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1391
    const-string v1, "eventEndTimezone"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1392
    const-string v1, "allDay"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1393
    const-string v1, "accessLevel"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1394
    const-string v1, "availability"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1395
    const-string v1, "hasAlarm"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1396
    const-string v1, "hasExtendedProperties"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1398
    const-string/jumbo v1, "rrule"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1399
    const-string/jumbo v1, "rdate"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1400
    const-string v1, "exrule"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1401
    const-string v1, "exdate"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1402
    const-string/jumbo v1, "original_sync_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v1, "original_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1404
    const-string/jumbo v1, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1406
    const-string/jumbo v1, "originalAllDay"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1407
    const-string/jumbo v1, "lastDate"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1408
    const-string v1, "hasAttendeeData"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1409
    const-string v1, "guestsCanInviteOthers"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1411
    const-string v1, "guestsCanModify"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1412
    const-string v1, "guestsCanSeeGuests"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1413
    const-string/jumbo v1, "organizer"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1414
    const-string v1, "_sync_id"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1415
    const-string v1, "dirty"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1416
    const-string/jumbo v1, "lastSynced"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1417
    const-string v1, "deleted"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v1, "sync_data1"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1419
    const-string/jumbo v1, "sync_data2"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1420
    const-string/jumbo v1, "sync_data3"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1421
    const-string/jumbo v1, "sync_data4"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1422
    const-string/jumbo v1, "sync_data5"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1423
    const-string/jumbo v1, "sync_data6"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1424
    const-string/jumbo v1, "sync_data7"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1425
    const-string/jumbo v1, "sync_data8"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1426
    const-string/jumbo v1, "sync_data9"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1427
    const-string/jumbo v1, "sync_data10"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1428
    const-string v1, "cal_sync1"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1429
    const-string v1, "cal_sync2"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1430
    const-string v1, "cal_sync3"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1431
    const-string v1, "cal_sync4"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1432
    const-string v1, "cal_sync5"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1433
    const-string v1, "cal_sync6"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1434
    const-string v1, "cal_sync7"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1435
    const-string v1, "cal_sync8"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1436
    const-string v1, "cal_sync9"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1437
    const-string v1, "cal_sync10"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1439
    new-instance v9, Landroid/content/Entity;

    invoke-direct {v9, v8}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1441
    .local v9, entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 1442
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/HtcCalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1453
    .local v14, subCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1454
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1455
    .local v13, reminderValues:Landroid/content/ContentValues;
    const-string/jumbo v1, "minutes"

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1456
    const-string/jumbo v1, "method"

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1457
    sget-object v1, Landroid/provider/HtcCalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v13}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1460
    .end local v13           #reminderValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1447
    .end local v14           #subCursor:Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/HtcCalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #subCursor:Landroid/database/Cursor;
    goto :goto_0

    .line 1460
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1463
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_2

    .line 1464
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/HtcCalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1475
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1476
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1477
    .local v7, attendeeValues:Landroid/content/ContentValues;
    const-string v1, "attendeeName"

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v1, "attendeeEmail"

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1483
    const-string v1, "attendeeType"

    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1485
    const-string v1, "attendeeStatus"

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    sget-object v1, Landroid/provider/HtcCalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v7}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1490
    .end local v7           #attendeeValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1469
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/HtcCalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_1

    .line 1490
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1493
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_4

    .line 1494
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/HtcCalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1505
    :goto_2
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1506
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1507
    .local v12, extendedValues:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const-string/jumbo v1, "value"

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    sget-object v1, Landroid/provider/HtcCalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v12}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1516
    .end local v12           #extendedValues:Landroid/content/ContentValues;
    :catchall_2
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1499
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/HtcCalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/HtcCalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_2

    .line 1516
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1519
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1520
    return-object v9
.end method
