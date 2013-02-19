.class public final Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
.super Ljava/lang/Object;
.source "HtcVCalendar.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcVCalendar"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mVCalString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lastDate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "last_update_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mTitle:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mVCalString:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static Debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 35
    return-void
.end method


# virtual methods
.method public buildVCalendar(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 10
    .parameter "context"
    .parameter "uniEvent"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-static {p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->getEventsUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v3

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v8, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v8, v6, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 80
    .local v8, myCal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    invoke-virtual {v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mVCalString:Ljava/lang/String;

    .line 82
    new-instance v9, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 84
    .local v9, quotedPrintableCodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    iget-object v2, v8, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Title is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->Debug(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->Debug(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCAL:-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mVCalString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->Debug(Ljava/lang/String;)V

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, p0

    .line 95
    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v7

    .line 86
    .local v7, e:Lorg/apache/commons/codec/DecoderException;
    invoke-virtual {v7}, Lorg/apache/commons/codec/DecoderException;->printStackTrace()V

    goto :goto_1
.end method

.method public buildVCalendarFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 5
    .parameter "context"
    .parameter "c"

    .prologue
    .line 102
    if-eqz p2, :cond_0

    .line 103
    new-instance v1, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v1, p2, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 104
    .local v1, myCal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    invoke-virtual {v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mVCalString:Ljava/lang/String;

    .line 106
    new-instance v2, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, quotedPrintableCodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    iget-object v3, v1, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Title is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->Debug(Ljava/lang/String;)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Summary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->Debug(Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCAL:-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mVCalString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->Debug(Ljava/lang/String;)V

    .line 118
    .end local v1           #myCal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    .end local v2           #quotedPrintableCodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    .end local p0
    :goto_1
    return-object p0

    .line 109
    .restart local v1       #myCal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    .restart local v2       #quotedPrintableCodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    .restart local p0
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Lorg/apache/commons/codec/DecoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/DecoderException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0           #e:Lorg/apache/commons/codec/DecoderException;
    .end local v1           #myCal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    .end local v2           #quotedPrintableCodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_0
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mVCalString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->mTitle:Ljava/lang/String;

    return-object v0
.end method
