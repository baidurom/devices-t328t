.class public Lcom/htc/util/calendar/vcalendar/VCalComposer;
.super Ljava/lang/Object;
.source "VCalComposer.java"


# static fields
.field private static final AND_ICAL_SYNC_PROD_ID:Ljava/lang/String; = "-//HTC//AND PIM Sync Client//"

.field public static final VERSION_VCAL10_INT:I = 0x1

.field public static final VERSION_VCAL20_INT:I = 0x2

.field public static final VERSION_VCALENDAR10:Ljava/lang/String; = "vcalendar1.0"

.field public static final VERSION_VCALENDAR20:Ljava/lang/String; = "vcalendar2.0"

.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private final foldingLength:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "\r\n"

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 62
    const/16 v0, 0x4b

    iput v0, p0, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingLength:I

    .line 65
    return-void
.end method

.method private buildEventStr(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)Ljava/lang/String;
    .locals 11
    .parameter "stru"

    .prologue
    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v7, strbuf:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v8, "BEGIN:VEVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-boolean v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    if-nez v8, :cond_f

    .line 125
    const-string v8, "X-OBJECTTYPE:APPOINTMENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_0
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 131
    const-string v8, "LAST-MODIFIED:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 134
    const-string v8, "UID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_1
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DESCRIPTION;CHARSET=Shift_JIS;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_2
    :goto_1
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 146
    iget-boolean v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    if-eqz v8, :cond_11

    .line 147
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->convertLongToRFC2445DateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, end:Ljava/lang/String;
    const-string v8, "DTEND;VALUE=DATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v1           #end:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 155
    iget-boolean v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    if-eqz v8, :cond_12

    .line 156
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->convertLongToRFC2445DateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, start:Ljava/lang/String;
    const-string v8, "DTSTART;VALUE=DATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v5           #start:Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 164
    const-string v8, "DALARM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v8, "AALARM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_5
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 169
    const-string v8, "DURATION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_6
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 172
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOCATION;CHARSET=Shift_JIS;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_7
    :goto_4
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 181
    const-string v8, "COMPLETED:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_8
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 184
    const-string v8, "RRULE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_9
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 187
    const-string v8, "RDATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_a
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 190
    const-string v8, "EXRULE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_b
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 193
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    const-string v9, ","

    const-string v10, ";"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    .line 194
    const-string v8, "EXDATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_c
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 198
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUMMARY;CHARSET=Shift_JIS;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_d
    :goto_5
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 207
    const-string v6, "TENTATIVE"

    .line 208
    .local v6, stat:Ljava/lang/String;
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 219
    :goto_6
    const-string v8, "STATUS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .end local v6           #stat:Ljava/lang/String;
    :cond_e
    iget-boolean v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->has_alarm:Z

    if-eqz v8, :cond_16

    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    if-eqz v8, :cond_16

    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_16

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_16

    .line 226
    iget-object v8, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;

    .line 227
    .local v4, r:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    iget-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    const-string v9, "vcalendar1.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 228
    const-string v3, ""

    .line 229
    .local v3, prefix:Ljava/lang/String;
    iget v8, v4, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;->method:I

    packed-switch v8, :pswitch_data_1

    .line 241
    const-string v8, "DALARM"

    .line 225
    .end local v3           #prefix:Ljava/lang/String;
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 127
    .end local v2           #i:I
    .end local v4           #r:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :cond_f
    const-string v8, "X-OBJECTTYPE:EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v0           #e:Ljava/lang/Exception;
    :goto_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 140
    :cond_10
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DESCRIPTION;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 150
    :cond_11
    const-string v8, "DTEND:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 159
    :cond_12
    const-string v8, "DTSTART:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 175
    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOCATION;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 201
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUMMARY;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 210
    .restart local v6       #stat:Ljava/lang/String;
    :pswitch_0
    const-string v6, "TENTATIVE"

    .line 211
    goto/16 :goto_6

    .line 213
    :pswitch_1
    const-string v6, "CONFIRMED"

    .line 214
    goto/16 :goto_6

    .line 216
    :pswitch_2
    const-string v6, "CANCELLED"

    goto/16 :goto_6

    .line 231
    .end local v6           #stat:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #prefix:Ljava/lang/String;
    .restart local v4       #r:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :pswitch_3
    const-string v3, "DALARM"

    .line 232
    goto/16 :goto_8

    .line 234
    :pswitch_4
    const-string v3, "AALARM"

    .line 235
    goto/16 :goto_8

    .line 237
    :pswitch_5
    const-string v3, "MALARM"

    .line 238
    goto/16 :goto_8

    .line 248
    .end local v3           #prefix:Ljava/lang/String;
    :cond_15
    const-string v8, "BEGIN:VALARM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ACTION:DISPLAY"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DESCRIPTION:ReminderMSG"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "TRIGGER:PT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v4, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;->minutes:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "END:VALARM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 257
    .end local v2           #i:I
    .end local v4           #r:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :cond_16
    const-string v8, "END:VEVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 229
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private convertLongToRFC2445DateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "time"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 302
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 303
    .local v1, t:Landroid/text/format/Time;
    invoke-virtual {v1, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 305
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 306
    .local v0, curr:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 307
    const-string v2, "ddd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    mul-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    mul-long/2addr v4, v7

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 310
    const-string v2, "%Y%m%d"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 267
    return-object p1
.end method

.method private isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createVCal(Lcom/htc/util/calendar/vcalendar/CalendarStruct;I)Ljava/lang/String;
    .locals 6
    .parameter "struct"
    .parameter "vcalversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/calendar/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, returnStr:Ljava/lang/StringBuilder;
    if-eq p2, v5, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    .line 85
    new-instance v3, Lcom/htc/util/calendar/vcalendar/VCalException;

    const-string v4, "version not match 1.0 or 2.0."

    invoke-direct {v3, v4}, Lcom/htc/util/calendar/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    if-ne p2, v5, :cond_1

    .line 87
    const-string v3, "vcalendar1.0"

    iput-object v3, p0, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 92
    :goto_0
    const-string v3, "BEGIN:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    if-ne p2, v5, :cond_2

    .line 95
    const-string v3, "VERSION:1.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 105
    iget-object v3, p1, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->buildEventStr(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    const-string v3, "vcalendar2.0"

    iput-object v3, p0, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_2
    const-string v3, "VERSION:2.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    .restart local v0       #i:I
    :cond_3
    const-string v3, "END:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/util/calendar/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
