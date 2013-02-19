.class public Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
.super Ljava/lang/Object;
.source "VCalendarUtils.java"

# interfaces
.implements Lcom/htc/util/calendar/vcalendar/HashItem;


# static fields
.field public static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field public static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "VCalendarUtils"

.field private static final VBEGIN:Ljava/lang/String; = "BEGIN:VCALENDAR"

.field private static final VEND:Ljava/lang/String; = "END:VCALENDAR"

.field private static final default_charset:Ljava/lang/String; = "UTF-8"

.field static final weekDayAry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final weekDays:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field public final WKST:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field public alarm:J

.field public categories:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtEnd:Landroid/text/format/Time;

.field public dtStart:Landroid/text/format/Time;

.field public duration:Ljava/lang/String;

.field public exDate:Ljava/lang/String;

.field public exRule:Ljava/lang/String;

.field public hasAlarm:Z

.field public isAllDay:Z

.field public last_update_time:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field private mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Ljava/lang/String;

.field public rDate:Ljava/lang/String;

.field public rRule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public strAlarm:Ljava/lang/String;

.field public strDTEnd:Ljava/lang/String;

.field public strDTStart:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field private vCalendar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    .line 232
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SU"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "MO"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TU"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "WE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TH"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "FR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SA"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "c"
    .parameter "uniEventUri"

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter "eventCur"
    .parameter "c"

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method private checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "monthDay"

    .prologue
    const/4 v6, 0x4

    .line 1786
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1787
    .local v1, nDay:I
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1788
    .local v0, MAX_DAY:I
    add-int v2, v1, p1

    .line 1790
    .local v2, tempDay:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_DAY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1794
    sub-int v3, v2, v0

    if-lez v3, :cond_1

    .line 1796
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, 0x1

    .line 1812
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1813
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1797
    :cond_1
    if-nez v2, :cond_3

    .line 1799
    iget v3, p2, Landroid/text/format/Time;->month:I

    if-nez v3, :cond_2

    .line 1800
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    const/16 v4, 0xb

    iget v5, p2, Landroid/text/format/Time;->year:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 1804
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1805
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    .line 1802
    :cond_2
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    iget v4, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p2, Landroid/text/format/Time;->month:I

    iget v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    goto :goto_1

    .line 1806
    :cond_3
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v3, p1

    if-eq v1, v3, :cond_0

    .line 1810
    move v1, v2

    goto :goto_0
.end method

.method private checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 1817
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1818
    .local v2, nMonth:I
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1820
    .local v1, nDay:I
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1821
    .local v0, MAX_DAY:I
    add-int v3, v1, p1

    .line 1823
    .local v3, tempDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nMonth, nDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX_DAY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1827
    sub-int v4, v3, v0

    if-lez v4, :cond_1

    .line 1829
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v4, 0x1

    .line 1830
    add-int/lit8 v2, v2, 0x1

    .line 1832
    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    .line 1833
    const/4 v2, 0x1

    .line 1843
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> nMonth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1844
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1835
    :cond_1
    if-gtz v3, :cond_0

    .line 1837
    add-int/lit8 v2, v2, -0x1

    .line 1839
    if-gtz v2, :cond_0

    .line 1840
    const/16 v2, 0xc

    goto :goto_0
.end method

.method private checkTimeObj(Ljava/lang/String;)Z
    .locals 8
    .parameter "strTime"

    .prologue
    const/16 v7, 0x3b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check time obj - Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1850
    const/4 v0, 0x0

    .line 1851
    .local v0, bHaveZ:Z
    const/4 v1, 0x1

    .line 1853
    .local v1, bInUTC:Z
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1854
    .local v2, t:Landroid/text/format/Time;
    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v1

    .line 1856
    const-string v5, "Z"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1858
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bHaveZ:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bInUTC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1859
    if-nez v1, :cond_0

    if-nez v0, :cond_a

    .line 1860
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t year "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1862
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1864
    iget v5, v2, Landroid/text/format/Time;->month:I

    if-ltz v5, :cond_1

    iget v5, v2, Landroid/text/format/Time;->month:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_2

    .line 1865
    :cond_1
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "month out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :goto_0
    return v3

    .line 1869
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t monthDay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1871
    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    if-lt v5, v4, :cond_3

    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_4

    .line 1872
    :cond_3
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthDay out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1876
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t hour "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1878
    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ltz v5, :cond_5

    iget v5, v2, Landroid/text/format/Time;->hour:I

    const/16 v6, 0x17

    if-le v5, v6, :cond_6

    .line 1879
    :cond_5
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1883
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t minute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1885
    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-ltz v5, :cond_7

    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-le v5, v7, :cond_8

    .line 1886
    :cond_7
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minute out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1890
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t second "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1892
    iget v5, v2, Landroid/text/format/Time;->second:I

    if-ltz v5, :cond_9

    iget v5, v2, Landroid/text/format/Time;->second:I

    if-le v5, v7, :cond_b

    .line 1893
    :cond_9
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1897
    :cond_a
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 1900
    goto/16 :goto_0
.end method

.method private checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 2
    .parameter "strDTStart"
    .parameter "eventTime"

    .prologue
    .line 1923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 1924
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/text/format/Time;->allDay:Z

    .line 1926
    :cond_0
    return-void
.end method

.method private checkTimeUTC(Ljava/lang/String;)Z
    .locals 3
    .parameter "strTime"

    .prologue
    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check time UTC - Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, bHaveZ:Z
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2019
    return v0
.end method

.method private checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dayOffset"
    .parameter "weekDay"

    .prologue
    .line 1767
    const/4 v1, 0x0

    .line 1769
    .local v1, nIdx:I
    :try_start_0
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1773
    :goto_0
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dayOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weekDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    add-int/2addr v1, p1

    .line 1776
    if-gez v1, :cond_1

    .line 1777
    const/4 v1, 0x6

    .line 1781
    :cond_0
    :goto_1
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    aget-object v2, v2, v1

    return-object v2

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWeekDayWithOffset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1778
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 1779
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 700
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 701
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 702
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 703
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 704
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 705
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 706
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 707
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 708
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 709
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 710
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 711
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 712
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 713
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 714
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 715
    return-void
.end method

.method private static convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1607
    const-string v0, "%Y%m%dT%H%M00Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1907
    return-void
.end method

.method private static escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "unescaped"

    .prologue
    .line 1959
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1960
    const-string v4, ""

    .line 2004
    :goto_0
    return-object v4

    .line 1963
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1964
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1965
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1966
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1967
    .local v0, ch:C
    const v4, 0xff0d

    if-ne v0, v4, :cond_1

    .line 1968
    const/16 v0, 0x2d

    .line 1971
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1999
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1965
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1973
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1974
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1995
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2004
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1971
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    .line 405
    if-nez p0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 412
    :goto_0
    return-object v1

    .line 408
    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 409
    .local v0, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractDurationMinutes(Landroid/text/format/Time;)J
    .locals 4
    .parameter "t"

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static extractDurationMinutes(Ljava/lang/String;)J
    .locals 10
    .parameter "t"

    .prologue
    const/4 v9, -0x1

    .line 464
    const/4 v4, 0x0

    .local v4, pos1:I
    const/4 v5, 0x0

    .line 465
    .local v5, pos2:I
    const/4 v3, 0x0

    .line 466
    .local v3, negative:Z
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v1, 0x0

    .local v1, hour:I
    const/4 v2, 0x0

    .local v2, minute:I
    const/4 v6, 0x0

    .local v6, second:I
    const/4 v7, 0x0

    .line 469
    .local v7, week:I
    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 470
    const/4 v3, 0x1

    .line 471
    :cond_0
    const/16 v8, 0x50

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 472
    if-ne v4, v9, :cond_2

    .line 511
    :cond_1
    :goto_0
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    mul-int/lit8 v9, v0, 0x18

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    int-to-long v8, v8

    return-wide v8

    .line 476
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 478
    const/16 v8, 0x44

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 479
    if-eq v5, v9, :cond_3

    .line 480
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 483
    :cond_3
    const/16 v8, 0x54

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 484
    if-eq v5, v9, :cond_6

    .line 485
    add-int/lit8 v4, v5, 0x1

    .line 486
    const/16 v8, 0x48

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 487
    if-eq v5, v9, :cond_4

    .line 488
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 489
    add-int/lit8 v4, v5, 0x1

    .line 491
    :cond_4
    const/16 v8, 0x4d

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 492
    if-eq v5, v9, :cond_5

    .line 493
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 494
    add-int/lit8 v4, v5, 0x1

    .line 496
    :cond_5
    const/16 v8, 0x53

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 497
    if-eq v5, v9, :cond_6

    .line 498
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 499
    add-int/lit8 v4, v5, 0x1

    .line 503
    :cond_6
    const/16 v8, 0x57

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 504
    if-eq v5, v9, :cond_1

    .line 505
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 506
    mul-int/lit8 v0, v7, 0x7

    goto :goto_0
.end method

.method private static extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 417
    invoke-static {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 420
    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1

    .line 422
    :cond_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 426
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 428
    goto :goto_0
.end method

.method private static extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "component"
    .parameter "propertyName"

    .prologue
    const/4 v5, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 434
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_0

    .line 436
    const-string v6, "ENCODING"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    .line 437
    .local v2, enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    const-string v6, "CHARSET"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 440
    .local v0, charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-nez v2, :cond_1

    .line 441
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 460
    .end local v0           #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .end local v2           #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_0
    :goto_0
    return-object v5

    .line 443
    .restart local v0       #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v2       #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_1
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 444
    new-instance v4, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    .line 446
    .local v4, qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    if-nez v0, :cond_2

    .line 447
    :try_start_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 455
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_3
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "BASE64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 456
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 371
    .local v0, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 374
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 380
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    :cond_0
    const/4 v5, 0x0

    .line 401
    :goto_0
    return-object v5

    .line 384
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 385
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 388
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 391
    .local v0, first:Z
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon/ICalendar$Property;

    .line 392
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 393
    const/4 v0, 0x0

    .line 399
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 397
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 401
    .end local v3           #property:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1756
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    const-string v0, "Shift_JIS"

    .line 1759
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 3
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 1910
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-le v0, v1, :cond_0

    .line 1914
    const/4 v0, 0x1

    .line 1918
    :goto_0
    return v0

    .line 1915
    :cond_0
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ge v0, v1, :cond_1

    .line 1916
    const/4 v0, -0x1

    goto :goto_0

    .line 1918
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iget v1, p2, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPriorityString(I)Ljava/lang/String;
    .locals 1
    .parameter "p"

    .prologue
    .line 735
    packed-switch p1, :pswitch_data_0

    .line 752
    const-string v0, "undefined priority"

    .line 754
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 740
    .end local v0           #result:Ljava/lang/String;
    :pswitch_0
    const-string v0, "HIGH"

    .line 741
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 743
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    const-string v0, "MEDIUM"

    .line 744
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 749
    .end local v0           #result:Ljava/lang/String;
    :pswitch_2
    const-string v0, "LOW"

    .line 750
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 10
    .parameter "t"
    .parameter "yearDay"

    .prologue
    const/4 v9, 0x0

    .line 1929
    iget v5, p1, Landroid/text/format/Time;->year:I

    .line 1930
    .local v5, year:I
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichYear:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " yearDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const/4 v3, 0x0

    .line 1932
    .local v3, inWhichMonth:I
    const/4 v2, 0x0

    .line 1933
    .local v2, inWhichDay:I
    const/4 v0, 0x0

    .line 1935
    .local v0, dayCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    .line 1936
    move v3, v1

    .line 1937
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v1, v5}, Landroid/text/format/Time;->set(III)V

    .line 1938
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1939
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    .line 1940
    .local v4, num:I
    add-int/2addr v0, v4

    .line 1941
    if-le v0, p2, :cond_1

    .line 1942
    sub-int v6, v0, v4

    sub-int v2, p2, v6

    .line 1952
    .end local v4           #num:I
    :cond_0
    :goto_1
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichMonth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inWhichDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-virtual {p1, v2, v3, v5}, Landroid/text/format/Time;->set(III)V

    .line 1954
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1955
    return-object p1

    .line 1944
    .restart local v4       #num:I
    :cond_1
    if-ne v0, p2, :cond_2

    .line 1945
    move v2, v4

    .line 1946
    goto :goto_1

    .line 1935
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 29
    .parameter "cur"
    .parameter "c"

    .prologue
    .line 1165
    const-wide/16 v11, 0x0

    .line 1168
    .local v11, alldayStart:J
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1169
    .local v14, colID:I
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1170
    .local v20, id:J
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 1173
    const-string v3, "iCalGUID"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1174
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 1177
    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1178
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1181
    .local v13, calID:Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1182
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1189
    :cond_0
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1190
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 1193
    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1194
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1195
    .local v23, start:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 1196
    .local v9, __timezone:Ljava/util/TimeZone;
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 1197
    .local v26, t:Landroid/text/format/Time;
    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1198
    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1199
    const/4 v15, 0x0

    .line 1200
    .local v15, daylightOffset:I
    new-instance v16, Ljava/util/Date;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1201
    .local v16, dt:Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1202
    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v15

    .line 1204
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_3

    .line 1205
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1206
    if-eqz v15, :cond_2

    .line 1207
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1208
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 1210
    :cond_3
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 1222
    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1223
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1224
    .local v18, end:J
    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-nez v3, :cond_4

    .line 1225
    const-string v3, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1226
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 1228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1229
    .local v25, subDur:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1230
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v27, 0x3e8

    mul-long v7, v7, v27

    add-long v18, v23, v7

    .line 1235
    .end local v25           #subDur:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1236
    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_5

    .line 1238
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1239
    if-eqz v15, :cond_5

    .line 1240
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1242
    :cond_5
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 1259
    const-string v3, "hasAlarm"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1260
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 1261
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v3, :cond_8

    .line 1262
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1263
    .local v4, uri:Landroid/net/Uri;
    const-string v3, "event_id=%d AND (method=1 OR method=0)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1264
    .local v6, where:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1266
    .local v22, reminderCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1267
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1268
    const-string v3, "minutes"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1269
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_e

    .line 1270
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v11, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 1273
    :goto_3
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1274
    .local v10, alarmTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1275
    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1276
    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    .end local v10           #alarmTime:Landroid/text/format/Time;
    :cond_6
    if-eqz v22, :cond_8

    .line 1280
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1281
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_7
    const/16 v22, 0x0

    .line 1289
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v22           #reminderCursor:Landroid/database/Cursor;
    :cond_8
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1290
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1297
    :cond_9
    const-string v3, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1298
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1305
    :cond_a
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1306
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 1309
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1310
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1314
    const-string v3, "rdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1315
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 1318
    const-string v3, "exrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1319
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 1322
    const-string v3, "exdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1323
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1326
    const-string v3, "last_update_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1327
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "T"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    .line 1330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    const-string v8, "T"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1333
    :cond_b
    return-void

    .line 1190
    .end local v9           #__timezone:Ljava/util/TimeZone;
    .end local v15           #daylightOffset:I
    .end local v16           #dt:Ljava/util/Date;
    .end local v18           #end:J
    .end local v23           #start:J
    .end local v26           #t:Landroid/text/format/Time;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1231
    .restart local v9       #__timezone:Ljava/util/TimeZone;
    .restart local v15       #daylightOffset:I
    .restart local v16       #dt:Ljava/util/Date;
    .restart local v18       #end:J
    .restart local v23       #start:J
    .restart local v26       #t:Landroid/text/format/Time;
    :catch_0
    move-exception v17

    .line 1232
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1260
    .end local v17           #e:Ljava/lang/Exception;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1272
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v22       #reminderCursor:Landroid/database/Cursor;
    :cond_e
    :try_start_2
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v23, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1279
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_10

    .line 1280
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1281
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_f
    const/16 v22, 0x0

    :cond_10
    throw v3
.end method

.method private init(Ljava/lang/String;)Z
    .locals 13
    .parameter "vCalRawData"

    .prologue
    const/4 v12, -0x1

    .line 315
    move-object v6, p1

    .line 316
    .local v6, rawData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 317
    .local v4, nestCount:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v9, vCalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v10, "BEGIN:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, nBegin:I
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 321
    .local v3, nEnd:I
    if-eq v12, v2, :cond_0

    if-ne v12, v3, :cond_1

    .line 335
    :cond_0
    const/4 v7, 0x0

    .line 336
    .local v7, results:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 337
    .local v8, s:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->initLocked(Ljava/lang/String;)Z

    move-result v5

    .line 338
    .local v5, oneResult:Z
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMPORT-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #oneResult:Z
    .end local v7           #results:Z
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    const-string v11, "END:VCALENDAR"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, body:Ljava/lang/String;
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    goto :goto_0

    .line 341
    .end local v0           #body:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v7       #results:Z
    :cond_2
    const/4 v10, 0x1

    return v10
.end method

.method private initLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "vCalRawData"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 346
    const-string v5, "BEGIN:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 347
    .local v2, nBegin:I
    const-string v5, "END:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 348
    .local v3, nEnd:I
    if-eq v6, v2, :cond_0

    if-ne v6, v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v4

    .line 351
    :cond_1
    const-string v5, "END:VCALENDAR"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 356
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    .local v0, cal:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 365
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z

    move-result v4

    goto :goto_0

    .line 357
    .end local v0           #cal:Lcom/android/calendarcommon/ICalendar$Component;
    :catch_0
    move-exception v1

    .line 358
    .local v1, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    goto :goto_0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 1152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1153
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1155
    .local v0, ch:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 1156
    :cond_0
    const/4 v2, 0x0

    .line 1160
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 1152
    .restart local v0       #ch:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v0           #ch:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isNullContentValues(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "cv"

    .prologue
    const/4 v1, 0x1

    .line 299
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v0, nullCv:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 302
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 2

    .prologue
    .line 2012
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qpEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1734
    const/4 v2, 0x0

    .line 1736
    .local v2, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1737
    invoke-static {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1741
    :cond_0
    new-instance v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 1743
    .local v1, qpcodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1748
    :goto_0
    return-object v2

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    .local v0, e:Lorg/apache/commons/codec/EncoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDtStart(Ljava/lang/String;)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 520
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 522
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 529
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 525
    :cond_0
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strDTStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 15
    .parameter "cal"

    .prologue
    .line 535
    const/4 v5, 0x0

    .line 537
    .local v5, isEvent:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    .line 538
    .local v1, component:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-direct {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->clear()V

    .line 539
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "VTODO"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 541
    :cond_1
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 543
    const-string v10, "UID"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 544
    const-string v10, "DTSTART"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 546
    .local v8, val:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 548
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 561
    :cond_2
    const-string v10, "DTEND"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 563
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 564
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 565
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 567
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 568
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 583
    :cond_3
    :goto_1
    const-string v10, "AALARM"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 584
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 585
    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 586
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 587
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 589
    .local v0, alarmTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v9

    .line 590
    .local v9, validAlarmTime:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "validAlarmTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 591
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 593
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 595
    iget-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b

    if-eqz v9, :cond_b

    .line 596
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 605
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :goto_2
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    .line 606
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 620
    :goto_3
    iget-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v10, :cond_11

    .line 622
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    const/16 v11, 0xb

    if-le v10, v11, :cond_10

    .line 623
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 624
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 629
    :goto_4
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 630
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 631
    const-string v10, "UTC"

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 636
    :goto_5
    const-string v10, "DURATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 637
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 638
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 646
    :goto_6
    const-string v10, "LOCATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 647
    const-string v10, "SUMMARY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 648
    const-string v10, "DESCRIPTION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 650
    const-string v10, "CATEGORIES"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 651
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 652
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    .line 654
    :cond_4
    const-string v10, "CLASS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 655
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 656
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->type:Ljava/lang/String;

    .line 658
    :cond_5
    const-string v10, "STATUS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 659
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 660
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    .line 661
    :cond_6
    const-string v10, "PRIORITY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 662
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 663
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getPriorityString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    .line 665
    :cond_7
    const-string v10, "RRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 666
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 668
    const-string v10, "RDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 669
    const-string v10, "EXRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 670
    const-string v10, "EXDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 674
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getEventCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 676
    .local v2, cv:Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isNullContentValues(Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 677
    if-eqz v5, :cond_13

    .line 678
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 680
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 692
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #val:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 693
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "VCalendarUtils"

    const-string v11, "Error when set event values."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    const/4 v10, 0x0

    .line 696
    .end local v3           #e:Ljava/lang/Exception;
    :goto_7
    return v10

    .line 552
    .restart local v1       #component:Lcom/android/calendarcommon/ICalendar$Component;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #val:Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_2

    .line 553
    :try_start_1
    const-string v10, "DUE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 554
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 556
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

    .line 570
    :cond_9
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "strDTEnd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    :cond_a
    if-nez v5, :cond_3

    .line 578
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 579
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    .line 598
    .restart local v0       #alarmTime:Landroid/text/format/Time;
    .restart local v9       #validAlarmTime:Z
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 601
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 607
    :cond_d
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->minute:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    if-nez v10, :cond_e

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_e

    .line 612
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 613
    :cond_e
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v5, :cond_f

    .line 615
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 617
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 626
    :cond_10
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 627
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_4

    .line 633
    :cond_11
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    goto/16 :goto_5

    .line 640
    :cond_12
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 642
    .local v6, mDur:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    goto/16 :goto_6

    .line 682
    .end local v6           #mDur:J
    .restart local v2       #cv:Landroid/content/ContentValues;
    :cond_13
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 684
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 696
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v8           #val:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method MatchMonth(Ljava/lang/String;)Z
    .locals 5
    .parameter "month"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1066
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 1071
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1069
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 1071
    goto :goto_0
.end method

.method MatchMonthDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "monthday"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1055
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 1060
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1058
    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 1060
    goto :goto_0
.end method

.method MatchWeekDay(Ljava/lang/String;)Z
    .locals 2
    .parameter "weekday"

    .prologue
    const/4 v0, 0x1

    .line 1035
    const-string v1, "MO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    const-string v1, "TU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    const-string v1, "WE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    const-string v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    const-string v1, "FR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    const-string v1, "SA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    const-string v1, "SU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    const/4 v0, 0x0

    goto :goto_0
.end method

.method MatchYearDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "yearDay"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1077
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x16e

    if-gt v3, v4, :cond_0

    .line 1082
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1080
    goto :goto_0

    .line 1081
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 1082
    goto :goto_0
.end method

.method RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .parameter "rrule"

    .prologue
    .line 1336
    if-nez p1, :cond_0

    .line 1337
    const/16 v26, 0x0

    .line 1603
    :goto_0
    return-object v26

    .line 1339
    :cond_0
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RRule_ICalToVCal: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 1341
    .local v25, result:Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v5, v0, [Ljava/lang/String;

    .line 1342
    .local v5, array:[Ljava/lang/String;
    const/16 v31, 0x0

    .line 1343
    .local v31, tempstr:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1344
    .local v30, temparr:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1345
    .local v17, freq:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1346
    .local v20, interval:Ljava/lang/String;
    const/16 v32, 0x0

    .line 1347
    .local v32, until:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1348
    .local v13, count:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v8, byday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v10, bymonthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v9, bymonth:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .local v11, bysetpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v33, "FREQ"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-gez v33, :cond_1

    .line 1354
    const/16 v26, 0x0

    goto :goto_0

    .line 1356
    :cond_1
    const-string v33, ";"

    const/16 v34, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1358
    const/4 v7, 0x0

    .line 1360
    .local v7, bYDMode:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    .line 1362
    aget-object v33, v5, v18

    const-string v34, "FREQ"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_8

    .line 1363
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1366
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 1368
    const-string v17, "YD"

    .line 1369
    const/4 v7, 0x1

    .line 1360
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1371
    :cond_3
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1372
    const-string v17, "YM"

    goto :goto_2

    .line 1374
    :cond_4
    const-string v33, "MONTHLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1375
    const-string v33, "BYDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_5

    .line 1376
    const-string v17, "MP"

    goto :goto_2

    .line 1378
    :cond_5
    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1379
    const-string v17, "MD"

    goto :goto_2

    .line 1382
    :cond_6
    const-string v33, "WEEKLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 1383
    const-string v17, "W"

    goto :goto_2

    .line 1385
    :cond_7
    const-string v33, "DAILY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1386
    const-string v17, "D"

    goto :goto_2

    .line 1389
    :cond_8
    aget-object v33, v5, v18

    const-string v34, "INTERVAL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_9

    .line 1390
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 1392
    :cond_9
    aget-object v33, v5, v18

    const-string v34, "UNTIL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_a

    .line 1393
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_2

    .line 1395
    :cond_a
    aget-object v33, v5, v18

    const-string v34, "COUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_b

    .line 1396
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1398
    :cond_b
    aget-object v33, v5, v18

    const-string v34, "BYDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_11

    .line 1399
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1402
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v15, eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1406
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1409
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v16, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1412
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1413
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1414
    .local v14, dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/4 v12, 0x0

    .line 1417
    .local v12, ch:C
    const-string v27, ""

    .line 1418
    .local v27, setpostemp:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 1419
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1420
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  ch:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v12, v0, :cond_c

    const/16 v33, 0x39

    move/from16 v0, v33

    if-le v12, v0, :cond_d

    :cond_c
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-ne v12, v0, :cond_e

    .line 1423
    :cond_d
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1418
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1428
    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_10

    .line 1429
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    :cond_f
    const/16 v31, 0x0

    .line 1444
    const/16 v30, 0x0

    .line 1446
    goto/16 :goto_2

    .line 1434
    :cond_10
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp len<0  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1436
    const-string v4, ""

    .line 1437
    .local v4, alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 1438
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1440
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1446
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v12           #ch:C
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    .end local v27           #setpostemp:Ljava/lang/String;
    :cond_11
    aget-object v33, v5, v18

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_13

    .line 1447
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1450
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1451
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1454
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1457
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1458
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1460
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1462
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1463
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1466
    const-string v3, ""

    .line 1467
    .local v3, alreadyFixMonthDay:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_5
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 1468
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1470
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1472
    :cond_12
    const/16 v31, 0x0

    .line 1473
    const/16 v30, 0x0

    .line 1475
    goto/16 :goto_2

    .end local v3           #alreadyFixMonthDay:Ljava/lang/String;
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    :cond_13
    aget-object v33, v5, v18

    const-string v34, "BYMONTH"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_18

    .line 1478
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1479
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1482
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1485
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1486
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1488
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1489
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1490
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v6, 0x0

    .line 1493
    .local v6, bFindByMonthDay:Z
    const/16 v28, 0x0

    .line 1494
    .local v28, tempByMonthDay:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1495
    .local v29, tempByMonthDayAry:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, idx:I
    :goto_6
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_14

    .line 1496
    aget-object v33, v5, v19

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_15

    .line 1497
    aget-object v33, v5, v19

    aget-object v34, v5, v19

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v19

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1498
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 1499
    const/4 v6, 0x1

    .line 1504
    :cond_14
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1505
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1506
    const-string v4, ""

    .line 1507
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 1508
    if-eqz v6, :cond_16

    .line 1509
    aget-object v33, v30, v21

    aget-object v34, v29, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1510
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 1495
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v21           #j:I
    :cond_15
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1512
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    .restart local v21       #j:I
    :cond_16
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1515
    :cond_17
    const/16 v31, 0x0

    .line 1516
    const/16 v30, 0x0

    .line 1518
    goto/16 :goto_2

    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v6           #bFindByMonthDay:Z
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v19           #idx:I
    .end local v21           #j:I
    .end local v28           #tempByMonthDay:Ljava/lang/String;
    .end local v29           #tempByMonthDayAry:[Ljava/lang/String;
    :cond_18
    aget-object v33, v5, v18

    const-string v34, "BYSETPOS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1519
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1520
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1521
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_9
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 1522
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1523
    :cond_19
    const/16 v31, 0x0

    .line 1524
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1529
    .end local v21           #j:I
    :cond_1a
    if-nez v20, :cond_1b

    .line 1530
    const-string v20, "1"

    .line 1532
    :cond_1b
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1534
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1e

    .line 1535
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 1537
    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    if-ltz v33, :cond_1c

    .line 1538
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "+"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1535
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1540
    :cond_1c
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 1541
    :catch_0
    move-exception v33

    goto :goto_b

    .line 1545
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1547
    .end local v21           #j:I
    :cond_1e
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bYDMode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    if-eqz v7, :cond_23

    .line 1550
    const/16 v22, 0x1

    .line 1551
    .local v22, month:I
    const/16 v23, 0x1

    .line 1553
    .local v23, monthDay:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1f

    .line 1554
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1555
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1558
    :cond_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_20

    .line 1559
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1560
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1562
    :cond_20
    add-int/lit8 v22, v22, -0x1

    .line 1564
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "strDTStart: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    new-instance v24, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v24, origTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1568
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1569
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1570
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1571
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1573
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "origTime: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1595
    .end local v22           #month:I
    .end local v23           #monthDay:I
    .end local v24           #origTime:Landroid/text/format/Time;
    :cond_21
    :goto_c
    if-eqz v32, :cond_29

    if-nez v13, :cond_29

    .line 1596
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    :cond_22
    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1602
    .local v26, sOut:Ljava/lang/String;
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "result: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1576
    .end local v26           #sOut:Ljava/lang/String;
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_25

    .line 1577
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1578
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1577
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 1579
    :cond_24
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1582
    .end local v21           #j:I
    :cond_25
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_27

    .line 1583
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    .line 1584
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1583
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 1585
    :cond_26
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1588
    .end local v21           #j:I
    :cond_27
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_21

    .line 1589
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 1590
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1589
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1591
    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    .line 1597
    .end local v21           #j:I
    :cond_29
    if-nez v32, :cond_2a

    if-eqz v13, :cond_2a

    .line 1598
    const-string v33, "#"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    .line 1599
    :cond_2a
    if-nez v32, :cond_22

    if-nez v13, :cond_22

    .line 1600
    const-string v33, "#0"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d
.end method

.method RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "rrule"

    .prologue
    .line 760
    if-nez p1, :cond_1

    .line 761
    const/16 p1, 0x0

    .line 1031
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 763
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "FREQ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_0

    .line 768
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RRule_VCalToICal: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/String;

    .line 771
    .local v5, array:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v24, "FREQ="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 772
    .local v17, result:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 773
    .local v12, interval:Ljava/lang/String;
    const/16 v21, 0x0

    .line 774
    .local v21, until:Ljava/lang/String;
    const/4 v7, 0x0

    .line 776
    .local v7, count:Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v22, weekday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v15, monthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v14, month:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v18, setpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, " "

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 783
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YM"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_9

    .line 784
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 785
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 786
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 789
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonth(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 790
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_2
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_3

    .line 793
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 794
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 795
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    :cond_3
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    .line 799
    aget-object v21, v5, v11

    .line 800
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 804
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 805
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 807
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 809
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 810
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1027
    .end local v11           #i:I
    :cond_7
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 1028
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1030
    :cond_8
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "result: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 813
    :cond_9
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_10

    .line 814
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 815
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_4
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_d

    .line 820
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchYearDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 821
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_a
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_b

    .line 825
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 826
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 827
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    :cond_b
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    .line 831
    aget-object v21, v5, v11

    .line 832
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 836
    :cond_d
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 837
    .local v19, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 838
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 839
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 840
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "eventStar Time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "YD event.yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v20, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 844
    .local v20, tUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 845
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 846
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tUTC: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 848
    .local v8, dayOffset:I
    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    .line 850
    .local v13, maxYearDay:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 851
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 852
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 853
    .local v23, ydYearDay:Ljava/lang/String;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ydYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " maxYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 855
    .local v16, nYearDay:I
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 857
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    add-int/lit8 v16, v24, 0x1

    .line 860
    :cond_e
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-le v0, v13, :cond_f

    .line 862
    const-string p1, ""

    goto/16 :goto_0

    .line 865
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v6

    .line 866
    .local v6, correctTime:Landroid/text/format/Time;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "correctly yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v6, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " correctTime:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    iget v0, v6, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v6, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 870
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 873
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 878
    .end local v6           #correctTime:Landroid/text/format/Time;
    .end local v8           #dayOffset:I
    .end local v11           #i:I
    .end local v13           #maxYearDay:I
    .end local v16           #nYearDay:I
    .end local v19           #t:Landroid/text/format/Time;
    .end local v20           #tUTC:Landroid/text/format/Time;
    .end local v23           #ydYearDay:Ljava/lang/String;
    :cond_10
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MP"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_11

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_1e

    .line 879
    :cond_11
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 880
    const-string v24, "MONTHLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 885
    .local v9, eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 888
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 890
    :cond_12
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 893
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 894
    .local v10, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 896
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 897
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 898
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_6
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_19

    .line 901
    aget-object v24, v5, v11

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_14

    .line 902
    aget-object v24, v5, v11

    const/16 v25, 0x0

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_13
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 904
    :cond_14
    aget-object v24, v5, v11

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_15

    .line 905
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v5, v11

    const/16 v26, 0x0

    aget-object v27, v5, v11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 907
    :cond_15
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    .line 908
    aget-object v21, v5, v11

    .line 909
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 911
    :cond_16
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_17

    .line 912
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 913
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 914
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 916
    :cond_17
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 917
    aget-object v24, v5, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 919
    :cond_18
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonthDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 920
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 933
    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1c

    .line 934
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1a

    .line 936
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    :cond_1a
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    .line 939
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 941
    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 942
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 945
    :cond_1c
    const-string v4, ""

    .line 946
    .local v4, alreadyFixMonthDayOffset:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 947
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1d

    .line 949
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v10, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 951
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 954
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 955
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 958
    .end local v4           #alreadyFixMonthDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_1e
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "W"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_25

    .line 959
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 960
    const-string v24, "WEEKLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 961
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 965
    .restart local v9       #eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 968
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 970
    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 973
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 974
    .restart local v10       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 976
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 977
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 978
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v3, ""

    .line 981
    .local v3, alreadyFixDayOffset:Ljava/lang/String;
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_a
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_23

    .line 982
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 983
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 984
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_20
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_21

    .line 988
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 989
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 990
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    :cond_21
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    .line 994
    aget-object v21, v5, v11

    .line 995
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 999
    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 1000
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_24

    .line 1002
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 1004
    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1005
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 1008
    .end local v3           #alreadyFixDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_25
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "D"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_7

    .line 1009
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1010
    const-string v24, "DAILY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1011
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_c
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 1014
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_26

    .line 1015
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1016
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_26

    .line 1017
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    :cond_26
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    .line 1021
    aget-object v21, v5, v11

    .line 1022
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_c
.end method

.method public getAlarmCV()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 1715
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV(J)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmCV(J)Landroid/content/ContentValues;
    .locals 4
    .parameter "eventId"

    .prologue
    .line 1719
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1720
    .local v0, cv:Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1721
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1723
    :cond_0
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    const-string v1, "minutes"

    iget-wide v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1726
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1095
    new-instance v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;-><init>()V

    .line 1097
    .local v0, calStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 1099
    new-instance v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 1101
    .local v3, evtStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 1102
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 1103
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 1104
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 1105
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 1106
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 1107
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 1108
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 1109
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    .line 1110
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    .line 1111
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    .line 1112
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 1113
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    .line 1114
    iget-boolean v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    iput-boolean v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    .line 1115
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    .line 1117
    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->addEventList(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)V

    .line 1120
    :try_start_0
    new-instance v1, Lcom/htc/util/calendar/vcalendar/VCalComposer;

    invoke-direct {v1}, Lcom/htc/util/calendar/vcalendar/VCalComposer;-><init>()V

    .line 1122
    .local v1, composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->createVCal(Lcom/htc/util/calendar/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1126
    .end local v1           #composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    :goto_0
    return-object v4

    .line 1125
    :catch_0
    move-exception v2

    .line 1126
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getEventCV()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1626
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1632
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "iCalGUID"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v1, "title"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v1, "dtstart"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1638
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    if-eqz v1, :cond_0

    .line 1639
    const-string v1, "dtend"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1642
    :cond_0
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1643
    const-string v1, "duration"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_1
    const-string v1, "eventLocation"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1649
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1651
    :cond_2
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\ncategories: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1654
    :cond_3
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\npriority: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1657
    :cond_4
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nstatus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1660
    :cond_5
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v4, ""

    if-ne v1, v4, :cond_6

    .line 1661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1663
    :cond_6
    const-string v1, "description"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v4, "allDay"

    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1668
    const-string v1, "eventTimezone"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :cond_7
    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v1, :cond_d

    .line 1672
    const-string v1, "hasAlarm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1677
    :goto_1
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1678
    const-string v1, "rrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_8
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1681
    const-string v1, "rdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :cond_9
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1684
    const-string v1, "exrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    :cond_a
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1687
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1688
    const-string v1, "exdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    :cond_b
    return-object v0

    :cond_c
    move v1, v3

    .line 1665
    goto :goto_0

    .line 1674
    :cond_d
    const-string v1, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public getHash()J
    .locals 3

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 1141
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1143
    .local v0, crc:Ljava/util/zip/CRC32;
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 1147
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMultiEventAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiEventsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gethasAlarm()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    return v0
.end method

.method public parseVCalendar(Ljava/lang/String;)Z
    .locals 1
    .parameter "vcalendar"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 277
    return-void
.end method
