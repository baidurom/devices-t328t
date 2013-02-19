.class public Lcom/htc/util/calendar/HtcCalendarUtils;
.super Ljava/lang/Object;
.source "HtcCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;,
        Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    }
.end annotation


# static fields
.field private static final DAY_IN_MINUTES:I = 0x5a0

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

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCalendarUtils"

.field private static final QUERY_DAYS:I = 0x3c

.field private static final QUERY_PERIOD:[I = null

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static final localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 32
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const-string v1, "allDay"

    aput-object v1, v0, v3

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

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    .line 170
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z
    .locals 5
    .parameter "e"
    .parameter "today"

    .prologue
    const/4 v0, 0x0

    .line 1082
    iget-boolean v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v1, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return v0

    .line 1084
    :cond_1
    iget-boolean v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1087
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 255
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 257
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .locals 4
    .parameter "today"
    .parameter "startDay"

    .prologue
    .line 1072
    int-to-long v0, p0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1073
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 1077
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    int-to-long v0, p0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1075
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0

    .line 1077
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0
.end method

.method private static getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 13
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    if-nez p0, :cond_1

    .line 987
    const/4 v0, 0x0

    .line 1068
    :cond_0
    :goto_0
    return-object v0

    .line 990
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 991
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 992
    const/4 p0, 0x0

    .line 993
    const/4 v0, 0x0

    goto :goto_0

    .line 996
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1001
    const/4 v5, 0x0

    .line 1002
    .local v5, start_mins:I
    const/4 v3, 0x0

    .line 1003
    .local v3, end_mins:I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1004
    .local v7, tnow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 1005
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    iget-wide v10, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1008
    .local v4, julianDay:I
    :cond_3
    new-instance v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v2}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    .line 1009
    .local v2, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v5, v8

    .line 1010
    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    .line 1011
    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    .line 1012
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    .line 1013
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 1014
    const/16 v8, 0x8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 1016
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 1018
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_4

    .line 1019
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1020
    .local v6, t:Landroid/text/format/Time;
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {v6, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 1021
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-static {v6, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 1024
    .end local v6           #t:Landroid/text/format/Time;
    :cond_4
    div-int/lit8 v8, v5, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    .line 1025
    rem-int/lit8 v8, v5, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    .line 1026
    div-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 1027
    rem-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    .line 1028
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 1029
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 1030
    :cond_5
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    .line 1031
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 1033
    :cond_6
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    .line 1034
    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    .line 1035
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 1036
    .local v1, duration:I
    const/4 v8, 0x1

    if-ge v1, v8, :cond_9

    .line 1037
    sub-int v8, v3, v5

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 1038
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    .line 1044
    :goto_2
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    .line 1045
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    .line 1046
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    invoke-static {v4, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 1049
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0xb

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-boolean v12, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    invoke-static {v8, v9, v10, v11, v12}, Lcom/htc/util/calendar/HtcCalendarUtils;->isRegularMeeting(JJZ)Z

    move-result v8

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    .line 1050
    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 1051
    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    .line 1052
    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 1053
    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 1055
    invoke-static {v2, v4}, Lcom/htc/util/calendar/HtcCalendarUtils;->checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1056
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    .line 1062
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1063
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1064
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1016
    .end local v1           #duration:I
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1040
    .restart local v1       #duration:I
    :cond_9
    add-int/lit8 v8, v1, -0x1

    mul-int/lit16 v8, v8, 0x5a0

    rsub-int v9, v5, 0x5a0

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    int-to-long v8, v8

    :try_start_1
    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 1041
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1059
    .end local v1           #duration:I
    .end local v2           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v3           #end_mins:I
    .end local v4           #julianDay:I
    .end local v5           #start_mins:I
    .end local v7           #tnow:Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 1060
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1062
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1063
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1064
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1062
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1063
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1064
    const/4 p0, 0x0

    :cond_a
    throw v8
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 264
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 266
    if-eqz p4, :cond_0

    .line 267
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 272
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 274
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    .line 275
    const/4 v4, 0x1

    .line 278
    :goto_1
    return v4

    .line 269
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 278
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/format/Time;",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v15, p1

    .line 411
    .local v15, queryBegin:Landroid/text/format/Time;
    move-object/from16 v16, p2

    .line 412
    .local v16, queryEnd:Landroid/text/format/Time;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v7, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 422
    .local v8, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 423
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 425
    const/4 v4, 0x0

    .line 428
    .local v4, selection:Ljava/lang/String;
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 431
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 432
    .local v17, selectedId:I
    if-nez v17, :cond_3

    .line 435
    const-string v4, "visible=1"

    .line 451
    .end local v17           #selectedId:I
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 462
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 464
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v1, v5

    long-to-float v11, v1

    .line 465
    .local v11, duration:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v11, v1

    if-gez v1, :cond_7

    .line 466
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 473
    .local v10, category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    :goto_2
    const/4 v1, 0x1

    invoke-static {v9, v15, v10, v1}, Lcom/htc/util/calendar/HtcCalendarUtils;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 476
    .end local v10           #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .end local v11           #duration:F
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 478
    const/4 v9, 0x0

    .line 481
    :cond_2
    return-object v7

    .line 438
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v17       #selectedId:I
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 440
    .end local v17           #selectedId:I
    :cond_4
    const-string v4, "("

    .line 441
    const/4 v14, 0x1

    .line 442
    .local v14, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 443
    .local v12, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v14, v1, :cond_5

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 446
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 451
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 454
    :cond_6
    const-string v4, "visible=1"

    goto/16 :goto_1

    .line 467
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v11       #duration:F
    :cond_7
    const/high16 v1, 0x3f80

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_8

    const/high16 v1, 0x4000

    cmpg-float v1, v11, v1

    if-gez v1, :cond_8

    .line 468
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .restart local v10       #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    goto/16 :goto_2

    .line 470
    .end local v10           #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    :cond_8
    sget-object v10, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .restart local v10       #category:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    goto/16 :goto_2
.end method

.method private static query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "begin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 944
    move-object v10, p1

    .line 945
    .local v10, queryBegin:Landroid/text/format/Time;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 946
    .local v11, queryEnd:Landroid/text/format/Time;
    iget v0, v10, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 947
    const/16 v0, 0x17

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 948
    const/16 v0, 0x3b

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 949
    iput v1, v11, Landroid/text/format/Time;->second:I

    .line 951
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 952
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v10, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 953
    invoke-virtual {v11, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 955
    const/4 v3, 0x0

    .line 958
    .local v3, selection:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    monitor-enter p0

    .line 960
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 961
    const-string v3, "visible=1"

    .line 970
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendarUtils;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 981
    .local v7, c:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendarUtils;->getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 964
    .end local v7           #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    const-string v3, "calendar_id in ( "

    .line 965
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 966
    .local v8, i:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 968
    .end local v8           #i:I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1 )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 970
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 972
    :cond_2
    const-string v3, "visible=1"

    goto :goto_1
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;Z)Ljava/util/ArrayList;
    .locals 13
    .parameter "c"
    .parameter "qbegin"
    .parameter "category"
    .parameter "skip_crossday_event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/text/format/Time;",
            "Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 287
    const/4 v4, 0x0

    .line 288
    .local v4, start_mins:I
    const/4 v3, 0x0

    .line 289
    .local v3, end_mins:I
    const/4 v1, 0x0

    .line 290
    .local v1, bSkip:Z
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 291
    .local v7, tnow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 294
    :cond_0
    new-instance v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v2}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    .line 295
    .local v2, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v4, v8

    .line 296
    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    .line 297
    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    .line 298
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    .line 299
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 300
    const/16 v8, 0x8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 302
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 304
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_2

    .line 305
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 306
    .local v5, t:Landroid/text/format/Time;
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {v5, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 307
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-static {v5, v8, v9}, Lcom/htc/util/calendar/HtcCalendarUtils;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 308
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 309
    .local v6, t1:Landroid/text/format/Time;
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 310
    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_1

    .line 311
    const/4 v1, 0x1

    .line 312
    :cond_1
    iget v8, v6, Landroid/text/format/Time;->monthDay:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/text/format/Time;->monthDay:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_2

    .line 313
    const/4 v1, 0x1

    .line 316
    .end local v5           #t:Landroid/text/format/Time;
    .end local v6           #t1:Landroid/text/format/Time;
    :cond_2
    div-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    .line 317
    rem-int/lit8 v8, v4, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    .line 318
    div-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 319
    rem-int/lit8 v8, v3, 0x3c

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    .line 320
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 321
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 322
    :cond_3
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    .line 323
    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v10, 0x18

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 325
    :cond_4
    if-le v3, v4, :cond_7

    .line 326
    sub-int v8, v3, v4

    int-to-long v8, v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 327
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    .line 333
    :goto_1
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    .line 334
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    .line 335
    iput-object p2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 339
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0xb

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-boolean v12, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    invoke-static {v8, v9, v10, v11, v12}, Lcom/htc/util/calendar/HtcCalendarUtils;->isRegularMeeting(JJZ)Z

    move-result v8

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    .line 341
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    .line 342
    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    .line 344
    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 345
    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    .line 346
    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 347
    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 349
    if-eqz v1, :cond_9

    .line 350
    const/4 v2, 0x0

    .line 351
    const/4 v1, 0x0

    .line 398
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 400
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_5

    .line 401
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 402
    const/4 p0, 0x0

    .line 406
    :cond_5
    return-object v0

    .line 302
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 329
    :cond_7
    sub-int v8, v4, v3

    rsub-int v8, v8, 0x5a0

    int-to-long v8, v8

    :try_start_1
    iput-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 330
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 400
    .end local v1           #bSkip:Z
    .end local v2           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v3           #end_mins:I
    .end local v4           #start_mins:I
    .end local v7           #tnow:Landroid/text/format/Time;
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_8

    .line 401
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 402
    const/4 p0, 0x0

    :cond_8
    throw v8

    .line 353
    .restart local v1       #bSkip:Z
    .restart local v2       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v3       #end_mins:I
    .restart local v4       #start_mins:I
    .restart local v7       #tnow:Landroid/text/format/Time;
    :cond_9
    :try_start_2
    sget-object v8, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne p2, v8, :cond_14

    .line 355
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    if-eqz v8, :cond_d

    .line 356
    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_c

    .line 357
    :cond_a
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_b

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_b

    .line 360
    const/4 v2, 0x0

    goto :goto_2

    .line 362
    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 365
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 367
    :cond_d
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v8, :cond_f

    .line 368
    if-eqz p3, :cond_e

    .line 369
    const/4 v2, 0x0

    goto :goto_2

    .line 371
    :cond_e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 372
    :cond_f
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-nez v8, :cond_13

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_10

    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_13

    .line 373
    :cond_10
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_11

    iget v8, p1, Landroid/text/format/Time;->minute:I

    int-to-long v8, v8

    iget-wide v10, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_11

    .line 376
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 378
    :cond_11
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_12

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_12

    .line 379
    const/4 v2, 0x0

    .line 380
    goto/16 :goto_2

    .line 382
    :cond_12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 385
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 388
    :cond_14
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v8, :cond_15

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_16

    :cond_15
    iget-boolean v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v8, :cond_17

    iget-wide v8, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_17

    .line 391
    :cond_16
    if-eqz p3, :cond_17

    .line 392
    const/4 v2, 0x0

    .line 393
    goto/16 :goto_2

    .line 396
    :cond_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 24
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    .local p1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 585
    const/4 v5, 0x0

    .line 867
    :goto_0
    return-object v5

    .line 588
    :cond_0
    const/4 v10, 0x0

    .line 589
    .local v10, monthEvent:Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v4, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 592
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 593
    .local v14, queryEnd:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 595
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    sget-object v20, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_1

    .line 596
    iget v0, v13, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 597
    iget v0, v13, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 598
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    aget v21, v21, v9

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 599
    const/16 v20, 0x17

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 600
    const/16 v20, 0x3b

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 601
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v13, v14, v1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 604
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 605
    sget-object v20, Lcom/htc/util/calendar/HtcCalendarUtils;->QUERY_PERIOD:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_1

    .line 606
    const/4 v10, 0x1

    .line 612
    :cond_1
    const/16 v16, -0x1

    .line 613
    .local v16, startingEventIdx:I
    const/4 v11, -0x1

    .line 614
    .local v11, nonStartEventIdx:I
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 615
    .local v15, startingEventBegin:Landroid/text/format/Time;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 617
    .local v12, notStartEventBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 618
    .local v7, eventBegin:Landroid/text/format/Time;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 620
    .local v8, eventEnd:Landroid/text/format/Time;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 621
    .local v19, tnow:Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 624
    const/4 v6, 0x0

    .line 626
    .local v6, e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_1a

    .line 627
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 628
    .local v5, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 629
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 645
    if-eqz v10, :cond_8

    .line 646
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 647
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 648
    :cond_2
    if-nez v6, :cond_3

    .line 649
    move/from16 v16, v9

    .line 650
    move-object v6, v5

    .line 626
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 595
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v6           #e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v7           #eventBegin:Landroid/text/format/Time;
    .end local v8           #eventEnd:Landroid/text/format/Time;
    .end local v11           #nonStartEventIdx:I
    .end local v12           #notStartEventBegin:Landroid/text/format/Time;
    .end local v15           #startingEventBegin:Landroid/text/format/Time;
    .end local v16           #startingEventIdx:I
    .end local v19           #tnow:Landroid/text/format/Time;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 657
    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v6       #e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v7       #eventBegin:Landroid/text/format/Time;
    .restart local v8       #eventEnd:Landroid/text/format/Time;
    .restart local v11       #nonStartEventIdx:I
    .restart local v12       #notStartEventBegin:Landroid/text/format/Time;
    .restart local v15       #startingEventBegin:Landroid/text/format/Time;
    .restart local v16       #startingEventIdx:I
    .restart local v19       #tnow:Landroid/text/format/Time;
    :cond_5
    if-nez v6, :cond_6

    .line 658
    move/from16 v16, v9

    .line 659
    move-object v6, v5

    .line 660
    goto :goto_3

    .line 662
    :cond_6
    if-eqz v6, :cond_7

    iget-boolean v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 663
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 664
    .local v17, t1:Landroid/text/format/Time;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 666
    .local v18, t2:Landroid/text/format/Time;
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 667
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 669
    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 670
    move/from16 v16, v9

    .line 671
    move-object v6, v5

    .line 672
    goto :goto_3

    .line 675
    .end local v17           #t1:Landroid/text/format/Time;
    .end local v18           #t2:Landroid/text/format/Time;
    :cond_7
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 676
    move/from16 v16, v9

    .line 677
    move-object v6, v5

    .line 678
    goto :goto_3

    .line 683
    :cond_8
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 684
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 685
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 686
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 687
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->hour:I

    .line 688
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->minute:I

    .line 689
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->second:I

    .line 691
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 692
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 693
    invoke-virtual {v4, v9, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 701
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 703
    :cond_9
    if-nez v6, :cond_3

    .line 704
    move/from16 v16, v9

    .line 705
    move-object v6, v5

    goto/16 :goto_3

    .line 716
    :cond_a
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_10

    .line 721
    if-eqz v6, :cond_e

    .line 722
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_b

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    move-wide/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_c

    :cond_b
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_d

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_d

    .line 724
    :cond_c
    const/4 v11, -0x1

    .line 725
    goto/16 :goto_3

    .line 727
    :cond_d
    move/from16 v16, v9

    .line 728
    move-object v6, v5

    .line 729
    goto/16 :goto_3

    .line 732
    :cond_e
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v8, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 733
    :cond_f
    move/from16 v16, v9

    .line 734
    move-object v6, v5

    .line 735
    goto/16 :goto_3

    .line 738
    :cond_10
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    .line 739
    if-eqz v6, :cond_14

    .line 740
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x18

    cmp-long v20, v20, v22

    if-nez v20, :cond_11

    .line 741
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 742
    :cond_11
    iget-boolean v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 744
    iget-object v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v20, v0

    sget-object v21, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 746
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_13

    .line 747
    move/from16 v16, v9

    .line 748
    move-object v6, v5

    .line 749
    goto/16 :goto_3

    .line 752
    :cond_12
    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-lez v20, :cond_13

    .line 753
    move/from16 v16, v9

    .line 754
    move-object v6, v5

    .line 755
    goto/16 :goto_3

    .line 760
    :cond_13
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_3

    .line 761
    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 762
    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 763
    move/from16 v16, v9

    .line 764
    move-object v6, v5

    .line 765
    goto/16 :goto_3

    .line 770
    :cond_14
    iget v0, v13, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->minute:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 771
    const/16 v16, -0x1

    .line 772
    goto/16 :goto_3

    .line 774
    :cond_15
    move/from16 v16, v9

    .line 775
    move-object v6, v5

    .line 776
    goto/16 :goto_3

    .line 779
    :cond_16
    invoke-virtual {v13, v8}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 785
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    invoke-virtual {v13, v15}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 786
    :cond_17
    move/from16 v16, v9

    .line 787
    move-object v6, v5

    .line 788
    goto/16 :goto_3

    .line 796
    :cond_18
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_19

    invoke-virtual {v7, v15}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 797
    :cond_19
    move v11, v9

    .line 798
    invoke-virtual {v12, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_3

    .line 804
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_1a
    if-ltz v16, :cond_1d

    .line 805
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 806
    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-boolean v3, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 807
    .local v3, allDay:Z
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 813
    if-eqz v3, :cond_1b

    .line 814
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->hour:I

    .line 815
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->minute:I

    .line 817
    :cond_1b
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v8, Landroid/text/format/Time;->second:I

    .line 825
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    .line 862
    .end local v3           #allDay:Z
    :goto_4
    if-eqz v4, :cond_1c

    .line 863
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 865
    :cond_1c
    const/4 v4, 0x0

    .line 867
    goto/16 :goto_0

    .line 827
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_1d
    if-ltz v11, :cond_1f

    .line 828
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 829
    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 830
    iget-boolean v3, v5, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 835
    .restart local v3       #allDay:Z
    if-eqz v3, :cond_1e

    .line 836
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 837
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 839
    :cond_1e
    const/16 v20, 0x3b

    move/from16 v0, v20

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 847
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    goto :goto_4

    .line 858
    .end local v3           #allDay:Z
    .end local v5           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_1f
    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Lcom/htc/util/calendar/HtcCalendarUtils;->schedularNextEvent(J)V

    .line 859
    const/4 v5, 0x0

    .restart local v5       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    goto :goto_4
.end method

.method public static final queryTodayOnly(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;"
        }
    .end annotation

    .prologue
    .local p1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 523
    if-nez p0, :cond_0

    .line 524
    const/4 v3, 0x0

    .line 571
    :goto_0
    return-object v3

    .line 527
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    const/4 v1, 0x0

    .line 530
    .local v1, count:I
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 531
    .local v6, queryBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 532
    .local v7, queryEnd:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 535
    const/4 v5, 0x0

    .line 537
    .local v5, onlytoday:Z
    iput v11, v6, Landroid/text/format/Time;->hour:I

    .line 538
    iput v11, v6, Landroid/text/format/Time;->minute:I

    .line 539
    iput v11, v6, Landroid/text/format/Time;->second:I

    .line 540
    const/16 v9, 0x17

    iput v9, v7, Landroid/text/format/Time;->hour:I

    .line 541
    const/16 v9, 0x3b

    iput v9, v7, Landroid/text/format/Time;->minute:I

    .line 542
    iput v11, v7, Landroid/text/format/Time;->second:I

    .line 543
    invoke-static {p0, v6, v7, p1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 546
    const/4 v5, 0x1

    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 550
    :cond_1
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 551
    .local v8, tnow:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 554
    const/4 v3, 0x0

    .line 555
    .local v3, e_:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 556
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 558
    .local v2, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    if-eqz v5, :cond_2

    .line 559
    iget-wide v9, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    iget-wide v9, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 560
    move-object v3, v2

    .line 555
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 566
    .end local v2           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_3
    if-eqz v0, :cond_4

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    :cond_4
    const/4 v0, 0x0

    .line 571
    goto :goto_0
.end method

.method private static schedularNextEvent(J)V
    .locals 6
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    .line 486
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 487
    .local v0, next:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 488
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 489
    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 490
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 491
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 493
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 494
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 498
    .local v1, t:J
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 499
    move-wide p0, v1

    goto :goto_0
.end method

.method public static final startQuery(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    .local p1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 876
    const/4 v8, 0x0

    .line 940
    :cond_0
    :goto_0
    return-object v8

    .line 879
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 882
    .local v7, queryBegin:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 883
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 885
    .local v1, begin:J
    invoke-static {p0, v7, p1}, Lcom/htc/util/calendar/HtcCalendarUtils;->query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 887
    const/4 v3, 0x0

    .line 888
    .local v3, currentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v6, 0x0

    .line 890
    .local v6, nextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 891
    .local v4, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-boolean v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v9, :cond_8

    .line 892
    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    cmp-long v9, v9, v1

    if-gez v9, :cond_7

    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    cmp-long v9, v9, v1

    if-lez v9, :cond_7

    .line 893
    if-nez v3, :cond_3

    .line 894
    move-object v3, v4

    .line 919
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-eqz v6, :cond_2

    .line 924
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v8, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    if-eqz v3, :cond_6

    .line 926
    if-eqz v6, :cond_6

    .line 927
    iget-wide v9, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    sub-long/2addr v9, v1

    const-wide/32 v11, 0x36ee80

    div-long/2addr v9, v11

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    .line 931
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_6
    if-eqz v6, :cond_0

    .line 937
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 901
    .end local v8           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    :cond_7
    if-nez v6, :cond_3

    .line 902
    move-object v6, v4

    goto :goto_1

    .line 910
    :cond_8
    if-nez v6, :cond_3

    .line 911
    move-object v6, v4

    goto :goto_1
.end method
