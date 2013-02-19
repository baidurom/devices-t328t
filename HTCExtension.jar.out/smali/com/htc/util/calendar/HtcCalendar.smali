.class public final Lcom/htc/util/calendar/HtcCalendar;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/HtcCalendar$EventCategory;,
        Lcom/htc/util/calendar/HtcCalendar$Appointment;
    }
.end annotation


# static fields
.field private static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_END_MINUTE:I = 0xd

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FACEBOOK_AVATAR_LARGE:I = 0x10

.field public static final INDEX_FACEBOOK_AVATAR_SMALL:I = 0x11

.field public static final INDEX_FACEBOOK_SOURCE_ID:I = 0xe

.field public static final INDEX_FACEBOOK_TYPE:I = 0xf

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_START_MINUTE:I = 0xc

.field public static final INDEX_TITLE:I = 0x1

.field public static final INSTANCES_PROJ:[Ljava/lang/String; = null

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static bSense21:Z

.field private static final localLOGV:Z

.field private static mAppointmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSelectedId:J

.field private static mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    const-string v0, "HtcCalendar"

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    .line 51
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_avatar_large"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_avatar_small"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    .line 287
    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 288
    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 291
    sput-boolean v3, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 292
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 351
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 352
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 353
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSenseVersion()I
    .locals 3

    .prologue
    .line 326
    const/4 v0, 0x4

    .line 327
    .local v0, sense_version:I
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    const/4 v0, 0x0

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    const/4 v0, 0x2

    goto :goto_0

    .line 331
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    const/4 v0, 0x3

    goto :goto_0

    .line 333
    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    const/4 v0, 0x4

    goto :goto_0

    .line 335
    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static goToToday()V
    .locals 3

    .prologue
    .line 801
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 802
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 803
    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    .line 804
    return-void
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 359
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 360
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 362
    if-eqz p4, :cond_0

    .line 363
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 368
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 370
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    .line 371
    const/4 v4, 0x1

    .line 374
    :goto_1
    return v4

    .line 365
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 374
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static query2Month(Landroid/text/format/Time;)I
    .locals 17
    .parameter "begin"

    .prologue
    .line 708
    move-object/from16 v13, p0

    .line 710
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 711
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 712
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 713
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3a

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 714
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 715
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 716
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 717
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 721
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 722
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 723
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 725
    const/4 v3, 0x0

    .line 728
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 729
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 730
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 731
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 732
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    .line 733
    const-string v3, "visible=1"

    .line 749
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 757
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 759
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 760
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 761
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 764
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 765
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 766
    const/4 v7, 0x0

    .line 768
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 736
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 738
    :cond_4
    const-string v3, "("

    .line 739
    const/4 v11, 0x1

    .line 740
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 741
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 745
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 744
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 749
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 751
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final query2MonthEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "selectedId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1331
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 1332
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1334
    if-nez p0, :cond_1

    .line 1335
    const/4 v0, 0x0

    .line 1412
    :goto_1
    return-object v0

    .line 1331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1338
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1339
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1342
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1345
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1346
    .local v13, queryBegin:Landroid/text/format/Time;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 1347
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 1348
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 1349
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1350
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1351
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1353
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1354
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 1355
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 1356
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1357
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 1358
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 1359
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 1360
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 1364
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1365
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1366
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1368
    const/4 v3, 0x0

    .line 1371
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1372
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 1373
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1374
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1375
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    .line 1377
    const-string v3, "visible=1"

    .line 1393
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    :goto_3
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1401
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1403
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1404
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 1405
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 1408
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1409
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1410
    const/4 v7, 0x0

    .line 1412
    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1380
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1382
    :cond_7
    const-string v3, "("

    .line 1383
    const/4 v11, 0x1

    .line 1384
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1385
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1389
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1388
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1393
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1395
    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V
    .locals 12
    .parameter "c"
    .parameter "qbegin"
    .parameter "category"
    .parameter "skip_crossday_event"

    .prologue
    .line 381
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, start_mins:I
    const/4 v2, 0x0

    .line 385
    .local v2, end_mins:I
    const/4 v0, 0x0

    .line 386
    .local v0, bSkip:Z
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 387
    .local v6, tnow:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 390
    :cond_0
    new-instance v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    invoke-direct {v1}, Lcom/htc/util/calendar/HtcCalendar$Appointment;-><init>()V

    .line 391
    .local v1, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    .line 392
    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v2, v7

    .line 393
    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->id_:I

    .line 394
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->color_:I

    .line 395
    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 396
    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 398
    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 400
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_2

    .line 401
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 402
    .local v4, t:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 403
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 404
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 405
    .local v5, t1:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 406
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_1

    .line 407
    const/4 v0, 0x1

    .line 408
    :cond_1
    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    if-le v7, v8, :cond_2

    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_2

    .line 409
    const/4 v0, 0x1

    .line 412
    .end local v4           #t:Landroid/text/format/Time;
    .end local v5           #t1:Landroid/text/format/Time;
    :cond_2
    div-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    .line 413
    rem-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    .line 414
    div-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 415
    rem-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    .line 416
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 417
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 418
    :cond_3
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 419
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 421
    :cond_4
    if-le v2, v3, :cond_7

    .line 422
    sub-int v7, v2, v3

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    .line 423
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    .line 429
    :goto_1
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->title_:Ljava/lang/String;

    .line 430
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->location_:Ljava/lang/String;

    .line 431
    iput-object p2, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 435
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v9, 0xb

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iget-boolean v11, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/util/calendar/HtcCalendar;->isRegularMeeting(JJZ)Z

    move-result v7

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    .line 437
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->startday_:J

    .line 438
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->endday_:J

    .line 440
    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 441
    const/16 v7, 0xf

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_type_:Ljava/lang/String;

    .line 442
    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 443
    const/16 v7, 0x11

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 445
    if-eqz v0, :cond_9

    .line 446
    const/4 v1, 0x0

    .line 447
    const/4 v0, 0x0

    .line 494
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 496
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 497
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 p0, 0x0

    .line 501
    :cond_5
    return-void

    .line 398
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 425
    :cond_7
    sub-int v7, v3, v2

    rsub-int v7, v7, 0x5a0

    int-to-long v7, v7

    :try_start_1
    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    .line 426
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 496
    .end local v0           #bSkip:Z
    .end local v1           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .end local v2           #end_mins:I
    .end local v3           #start_mins:I
    .end local v6           #tnow:Landroid/text/format/Time;
    :catchall_0
    move-exception v7

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_8

    .line 497
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 498
    const/4 p0, 0x0

    :cond_8
    throw v7

    .line 449
    .restart local v0       #bSkip:Z
    .restart local v1       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .restart local v2       #end_mins:I
    .restart local v3       #start_mins:I
    .restart local v6       #tnow:Landroid/text/format/Time;
    :cond_9
    :try_start_2
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_14

    .line 451
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    if-eqz v7, :cond_d

    .line 452
    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_a

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_c

    .line 453
    :cond_a
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    .line 456
    const/4 v1, 0x0

    goto :goto_2

    .line 458
    :cond_b
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 461
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 463
    :cond_d
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-eqz v7, :cond_f

    .line 464
    if-eqz p3, :cond_e

    .line 465
    const/4 v1, 0x0

    goto :goto_2

    .line 467
    :cond_e
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 468
    :cond_f
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-nez v7, :cond_13

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_10

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_13

    .line 469
    :cond_10
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    .line 472
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 474
    :cond_11
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_12

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_12

    .line 475
    const/4 v1, 0x0

    .line 476
    goto/16 :goto_2

    .line 478
    :cond_12
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 481
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 484
    :cond_14
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_15

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_16

    :cond_15
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_17

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_17

    .line 487
    :cond_16
    if-eqz p3, :cond_17

    .line 488
    const/4 v1, 0x0

    .line 489
    goto/16 :goto_2

    .line 492
    :cond_17
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 22
    .parameter "context"
    .parameter "selectedId"

    .prologue
    .line 891
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    sput-boolean v18, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 892
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 894
    if-nez p0, :cond_1

    .line 895
    const/4 v4, 0x0

    .line 1214
    :goto_1
    return-object v4

    .line 891
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 898
    :cond_1
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v18, :cond_2

    .line 899
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 902
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 903
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 905
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 906
    .local v11, queryBegin:Landroid/text/format/Time;
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 907
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 908
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 911
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 912
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 913
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 915
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v3

    .line 917
    .local v3, count:I
    if-nez v3, :cond_3

    .line 918
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 919
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 920
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 921
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 922
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 923
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 924
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryTomorrow(Landroid/text/format/Time;)I

    move-result v3

    .line 927
    :cond_3
    const/16 v17, 0x0

    .line 929
    .local v17, weekevent:Z
    if-nez v3, :cond_4

    .line 930
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 931
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 932
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 933
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 934
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 935
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 936
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->query2Month(Landroid/text/format/Time;)I

    move-result v3

    .line 938
    if-lez v3, :cond_4

    .line 939
    const/16 v17, 0x1

    .line 959
    :cond_4
    const/4 v13, -0x1

    .line 960
    .local v13, startingEventIdx:I
    const/4 v9, -0x1

    .line 961
    .local v9, nonStartEventIdx:I
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 962
    .local v12, startingEventBegin:Landroid/text/format/Time;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 964
    .local v10, notStartEventBegin:Landroid/text/format/Time;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 965
    .local v6, eventBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 967
    .local v7, eventEnd:Landroid/text/format/Time;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 968
    .local v16, tnow:Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 971
    const/4 v5, 0x0

    .line 973
    .local v5, e_:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_1c

    .line 974
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 975
    .local v4, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 976
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 992
    if-eqz v17, :cond_a

    .line 993
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 994
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 995
    :cond_5
    if-nez v5, :cond_6

    .line 996
    move v13, v8

    .line 997
    move-object v5, v4

    .line 973
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1004
    :cond_7
    if-nez v5, :cond_8

    .line 1005
    move v13, v8

    .line 1006
    move-object v5, v4

    .line 1007
    goto :goto_3

    .line 1009
    :cond_8
    if-eqz v5, :cond_9

    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1010
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1011
    .local v14, t1:Landroid/text/format/Time;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 1013
    .local v15, t2:Landroid/text/format/Time;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1014
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1016
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 1017
    move v13, v8

    .line 1018
    move-object v5, v4

    .line 1019
    goto :goto_3

    .line 1022
    .end local v14           #t1:Landroid/text/format/Time;
    .end local v15           #t2:Landroid/text/format/Time;
    :cond_9
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 1023
    move v13, v8

    .line 1024
    move-object v5, v4

    .line 1025
    goto :goto_3

    .line 1030
    :cond_a
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 1031
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 1032
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 1033
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    .line 1034
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 1035
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 1036
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 1038
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 1039
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 1040
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_b

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1050
    :cond_b
    if-nez v5, :cond_6

    .line 1051
    move v13, v8

    .line 1052
    move-object v5, v4

    goto/16 :goto_3

    .line 1063
    :cond_c
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    .line 1068
    if-eqz v5, :cond_10

    .line 1069
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_d

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_e

    :cond_d
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_f

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_f

    .line 1071
    :cond_e
    const/4 v9, -0x1

    .line 1072
    goto/16 :goto_3

    .line 1074
    :cond_f
    move v13, v8

    .line 1075
    move-object v5, v4

    .line 1076
    goto/16 :goto_3

    .line 1079
    :cond_10
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 1080
    :cond_11
    move v13, v8

    .line 1081
    move-object v5, v4

    .line 1082
    goto/16 :goto_3

    .line 1085
    :cond_12
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_18

    .line 1086
    if-eqz v5, :cond_16

    .line 1087
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x18

    cmp-long v18, v18, v20

    if-nez v18, :cond_13

    .line 1088
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 1089
    :cond_13
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 1091
    iget-object v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 1093
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_15

    .line 1094
    move v13, v8

    .line 1095
    move-object v5, v4

    .line 1096
    goto/16 :goto_3

    .line 1099
    :cond_14
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-lez v18, :cond_15

    .line 1100
    move v13, v8

    .line 1101
    move-object v5, v4

    .line 1102
    goto/16 :goto_3

    .line 1107
    :cond_15
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_6

    .line 1108
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 1109
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 1110
    move v13, v8

    .line 1111
    move-object v5, v4

    .line 1112
    goto/16 :goto_3

    .line 1117
    :cond_16
    iget v0, v11, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    .line 1118
    const/4 v13, -0x1

    .line 1119
    goto/16 :goto_3

    .line 1121
    :cond_17
    move v13, v8

    .line 1122
    move-object v5, v4

    .line 1123
    goto/16 :goto_3

    .line 1126
    :cond_18
    invoke-virtual {v11, v7}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 1132
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_19

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1133
    :cond_19
    move v13, v8

    .line 1134
    move-object v5, v4

    .line 1135
    goto/16 :goto_3

    .line 1143
    :cond_1a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_1b

    invoke-virtual {v6, v12}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1144
    :cond_1b
    move v9, v8

    .line 1145
    invoke-virtual {v10, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_3

    .line 1151
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_1c
    if-ltz v13, :cond_1f

    .line 1152
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 1153
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 1154
    .local v2, allDay:Z
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1160
    if-eqz v2, :cond_1d

    .line 1161
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 1162
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 1164
    :cond_1d
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 1172
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    .line 1209
    .end local v2           #allDay:Z
    :goto_4
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v18, :cond_1e

    .line 1210
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1212
    :cond_1e
    const/16 v18, 0x0

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1174
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_1f
    if-ltz v9, :cond_21

    .line 1175
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 1176
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1177
    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 1182
    .restart local v2       #allDay:Z
    if-eqz v2, :cond_20

    .line 1183
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 1184
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 1186
    :cond_20
    const/16 v18, 0x3b

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    .line 1194
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    goto :goto_4

    .line 1205
    .end local v2           #allDay:Z
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_21
    const-wide/16 v18, -0x1

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    .line 1206
    const/4 v4, 0x0

    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    goto :goto_4
.end method

.method private static queryToday(Landroid/text/format/Time;)I
    .locals 16
    .parameter "begin"

    .prologue
    .line 504
    move-object/from16 v12, p0

    .line 506
    .local v12, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 507
    .local v13, queryEnd:Landroid/text/format/Time;
    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 508
    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 509
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 510
    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 511
    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 512
    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 519
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 520
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 521
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 523
    const/4 v3, 0x0

    .line 526
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 527
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 528
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 529
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 530
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    .line 532
    const-string v3, "visible=1"

    .line 548
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 558
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 560
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 561
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 562
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 565
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 567
    const/4 v7, 0x0

    .line 570
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 535
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 537
    :cond_4
    const-string v3, "("

    .line 538
    const/4 v11, 0x1

    .line 539
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 540
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 543
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 548
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 550
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryTodayOnly(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 13
    .parameter "context"
    .parameter "selectedId"

    .prologue
    .line 819
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 820
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 822
    if-nez p0, :cond_1

    .line 823
    const/4 v2, 0x0

    .line 875
    :goto_1
    return-object v2

    .line 819
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 826
    :cond_1
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v9, :cond_2

    .line 827
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 829
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, count:I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 835
    .local v7, queryBegin:Landroid/text/format/Time;
    const/4 v6, 0x0

    .line 836
    .local v6, onlytoday:Z
    if-nez v0, :cond_3

    .line 837
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iput v9, v7, Landroid/text/format/Time;->year:I

    .line 838
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->month:I

    iput v9, v7, Landroid/text/format/Time;->month:I

    .line 839
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    iput v9, v7, Landroid/text/format/Time;->monthDay:I

    .line 840
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->hour:I

    .line 841
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->minute:I

    .line 842
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->second:I

    .line 843
    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v0

    .line 845
    if-lez v0, :cond_3

    .line 846
    const/4 v6, 0x1

    .line 849
    :cond_3
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 850
    .local v3, eventBegin:Landroid/text/format/Time;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 852
    .local v4, eventEnd:Landroid/text/format/Time;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 853
    .local v8, tnow:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 856
    const/4 v2, 0x0

    .line 857
    .local v2, e_:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v0, :cond_5

    .line 858
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 859
    .local v1, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v3, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 860
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-virtual {v4, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 862
    if-eqz v6, :cond_4

    .line 863
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 864
    move-object v2, v1

    .line 857
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 870
    .end local v1           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_5
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 871
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 873
    :cond_6
    const/4 v9, 0x0

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method private static queryTomorrow(Landroid/text/format/Time;)I
    .locals 16
    .parameter "begin"

    .prologue
    .line 574
    move-object/from16 v12, p0

    .line 576
    .local v12, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 577
    .local v13, queryEnd:Landroid/text/format/Time;
    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 578
    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 579
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 580
    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 581
    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 582
    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 590
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 591
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 592
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 594
    const/4 v3, 0x0

    .line 597
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 598
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 599
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 600
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 601
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    .line 603
    const-string v3, "visible=1"

    .line 619
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 629
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 631
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 632
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 633
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 636
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 637
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 638
    const/4 v7, 0x0

    .line 640
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 606
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 608
    :cond_4
    const-string v3, "("

    .line 609
    const/4 v11, 0x1

    .line 610
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 611
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 614
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 619
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 621
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method private static queryWeek(Landroid/text/format/Time;)I
    .locals 17
    .parameter "begin"

    .prologue
    .line 644
    move-object/from16 v13, p0

    .line 646
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 647
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 648
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 649
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 650
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 651
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 652
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 653
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 657
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 658
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 659
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 661
    const/4 v3, 0x0

    .line 664
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 665
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 666
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 667
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 668
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    .line 669
    const-string v3, "visible=1"

    .line 685
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 693
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 695
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 696
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 697
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 700
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 702
    const/4 v7, 0x0

    .line 704
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 672
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 674
    :cond_4
    const-string v3, "("

    .line 675
    const/4 v11, 0x1

    .line 676
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 677
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 680
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 685
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 687
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryWeekEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "selectedId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 1233
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1235
    if-nez p0, :cond_1

    .line 1236
    const/4 v0, 0x0

    .line 1313
    :goto_1
    return-object v0

    .line 1232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1239
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1240
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1243
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1246
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1247
    .local v13, queryBegin:Landroid/text/format/Time;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 1248
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 1249
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 1250
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1251
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1252
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1254
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1255
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 1256
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 1257
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x7

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1258
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 1259
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 1260
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 1261
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 1265
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1266
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1267
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1269
    const/4 v3, 0x0

    .line 1272
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1273
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 1274
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1275
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1276
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    .line 1278
    const-string v3, "visible=1"

    .line 1294
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    :goto_3
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1302
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1304
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1305
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 1306
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 1309
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1310
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1311
    const/4 v7, 0x0

    .line 1313
    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1281
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1283
    :cond_7
    const-string v3, "("

    .line 1284
    const/4 v11, 0x1

    .line 1285
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1286
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1290
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1289
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1294
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1296
    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static schedularNextEvent(J)V
    .locals 6
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    .line 773
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 774
    .local v0, next:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 775
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 776
    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 777
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 778
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 780
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 781
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 785
    .local v1, t:J
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 786
    move-wide p0, v1

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1439
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1440
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1441
    :cond_0
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 1443
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1444
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1445
    :cond_1
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1447
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1448
    return-void
.end method

.method public setSelectedList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sput-object p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 1429
    return-void
.end method
