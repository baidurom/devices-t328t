.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 89
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 117
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 214
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 240
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x6ct 0x0t 0x4t 0x1t
        0x6dt 0x0t 0x4t 0x1t
        0x6et 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
        0x72t 0x0t 0x4t 0x1t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x73t 0x0t 0x4t 0x1t
        0x74t 0x0t 0x4t 0x1t
        0x75t 0x0t 0x4t 0x1t
        0x76t 0x0t 0x4t 0x1t
        0x77t 0x0t 0x4t 0x1t
        0x78t 0x0t 0x4t 0x1t
        0x79t 0x0t 0x4t 0x1t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x7at 0x0t 0x4t 0x1t
        0x7bt 0x0t 0x4t 0x1t
        0x7ct 0x0t 0x4t 0x1t
        0x7dt 0x0t 0x4t 0x1t
        0x7et 0x0t 0x4t 0x1t
        0x7ft 0x0t 0x4t 0x1t
        0x80t 0x0t 0x4t 0x1t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x81t 0x0t 0x4t 0x1t
        0x82t 0x0t 0x4t 0x1t
        0x83t 0x0t 0x4t 0x1t
        0x84t 0x0t 0x4t 0x1t
        0x85t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
    .end array-data

    .line 75
    :array_4
    .array-data 0x4
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
        0x3ft 0x0t 0x4t 0x1t
        0x40t 0x0t 0x4t 0x1t
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
    .end array-data

    .line 89
    :array_5
    .array-data 0x4
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x4bt 0x0t 0x4t 0x1t
        0x4ct 0x0t 0x4t 0x1t
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
        0x53t 0x0t 0x4t 0x1t
    .end array-data

    .line 103
    :array_6
    .array-data 0x4
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
        0x59t 0x0t 0x4t 0x1t
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
    .end array-data

    .line 117
    :array_7
    .array-data 0x4
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
        0x67t 0x0t 0x4t 0x1t
        0x68t 0x0t 0x4t 0x1t
        0x69t 0x0t 0x4t 0x1t
        0x6at 0x0t 0x4t 0x1t
        0x6bt 0x0t 0x4t 0x1t
    .end array-data

    .line 131
    :array_8
    .array-data 0x4
        0xet 0x5t 0x4t 0x1t
        0xft 0x5t 0x4t 0x1t
    .end array-data

    .line 214
    :array_9
    .array-data 0x4
        0xb1t 0x0t 0x4t 0x1t
        0xb2t 0x0t 0x4t 0x1t
        0xbet 0x0t 0x4t 0x1t
        0xc0t 0x0t 0x4t 0x1t
        0xb3t 0x0t 0x4t 0x1t
        0xb5t 0x0t 0x4t 0x1t
        0xb7t 0x0t 0x4t 0x1t
        0xb9t 0x0t 0x4t 0x1t
        0xa3t 0x0t 0x4t 0x1t
        0xa4t 0x0t 0x4t 0x1t
        0xa5t 0x0t 0x4t 0x1t
        0xa6t 0x0t 0x4t 0x1t
        0xa8t 0x0t 0x4t 0x1t
        0xa9t 0x0t 0x4t 0x1t
        0xaat 0x0t 0x4t 0x1t
        0xa7t 0x0t 0x4t 0x1t
    .end array-data

    .line 240
    :array_a
    .array-data 0x4
        0xbct 0x0t 0x4t 0x1t
        0xbdt 0x0t 0x4t 0x1t
        0xbft 0x0t 0x4t 0x1t
        0xbbt 0x0t 0x4t 0x1t
        0xb4t 0x0t 0x4t 0x1t
        0xb6t 0x0t 0x4t 0x1t
        0xb8t 0x0t 0x4t 0x1t
        0xbat 0x0t 0x4t 0x1t
        0xa3t 0x0t 0x4t 0x1t
        0xa4t 0x0t 0x4t 0x1t
        0xa5t 0x0t 0x4t 0x1t
        0xa6t 0x0t 0x4t 0x1t
        0xa8t 0x0t 0x4t 0x1t
        0xa9t 0x0t 0x4t 0x1t
        0xaat 0x0t 0x4t 0x1t
        0xa7t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 968
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 969
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 970
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 993
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 994
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 1017
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 66
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1177
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v38

    .line 1178
    .local v38, res:Landroid/content/res/Resources;
    and-int/lit8 v62, p6, 0x1

    if-eqz v62, :cond_5

    const/16 v41, 0x1

    .line 1179
    .local v41, showTime:Z
    :goto_0
    and-int/lit8 v62, p6, 0x2

    if-eqz v62, :cond_6

    const/16 v42, 0x1

    .line 1180
    .local v42, showWeekDay:Z
    :goto_1
    and-int/lit8 v62, p6, 0x4

    if-eqz v62, :cond_7

    const/16 v43, 0x1

    .line 1181
    .local v43, showYear:Z
    :goto_2
    and-int/lit8 v62, p6, 0x8

    if-eqz v62, :cond_8

    const/16 v36, 0x1

    .line 1182
    .local v36, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v62, v0

    if-eqz v62, :cond_9

    const/16 v60, 0x1

    .line 1183
    .local v60, useUTC:Z
    :goto_4
    const v62, 0x88000

    and-int v62, v62, p6

    if-eqz v62, :cond_a

    const/4 v6, 0x1

    .line 1184
    .local v6, abbrevWeekDay:Z
    :goto_5
    const/high16 v62, 0x9

    and-int v62, v62, p6

    if-eqz v62, :cond_b

    const/4 v4, 0x1

    .line 1185
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v62, p6, 0x20

    if-eqz v62, :cond_c

    const/16 v34, 0x1

    .line 1186
    .local v34, noMonthDay:Z
    :goto_7
    const/high16 v62, 0x2

    and-int v62, v62, p6

    if-eqz v62, :cond_d

    const/16 v37, 0x1

    .line 1191
    .local v37, numericDate:Z
    :goto_8
    cmp-long v62, p2, p4

    if-nez v62, :cond_e

    const/16 v31, 0x1

    .line 1194
    .local v31, isInstant:Z
    :goto_9
    if-eqz p7, :cond_f

    .line 1195
    new-instance v44, Landroid/text/format/Time;

    move-object/from16 v0, v44

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v44, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v44

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1205
    if-eqz v31, :cond_11

    .line 1206
    move-object/from16 v14, v44

    .line 1207
    .local v14, endDate:Landroid/text/format/Time;
    const/4 v12, 0x0

    .line 1236
    .local v12, dayDistance:I
    :goto_b
    if-nez v31, :cond_1

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v63, v0

    or-int v62, v62, v63

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v63, v0

    or-int v62, v62, v63

    if-nez v62, :cond_1

    if-eqz v41, :cond_0

    const/16 v62, 0x1

    move/from16 v0, v62

    if-gt v12, v0, :cond_1

    .line 1239
    :cond_0
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v62, v0

    add-int/lit8 v62, v62, -0x1

    move/from16 v0, v62

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1240
    const/16 v62, 0x1

    move/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1243
    :cond_1
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v46, v0

    .line 1244
    .local v46, startDay:I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v49, v0

    .line 1245
    .local v49, startMonthNum:I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    .line 1247
    .local v55, startYear:I
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    .line 1248
    .local v16, endDay:I
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    .line 1249
    .local v19, endMonthNum:I
    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    .line 1251
    .local v25, endYear:I
    const-string v54, ""

    .line 1252
    .local v54, startWeekDayString:Ljava/lang/String;
    const-string v24, ""

    .line 1253
    .local v24, endWeekDayString:Ljava/lang/String;
    if-eqz v42, :cond_2

    .line 1254
    const-string v61, ""

    .line 1255
    .local v61, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 1256
    const-string v61, "%a"

    .line 1260
    :goto_c
    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1261
    if-eqz v31, :cond_15

    move-object/from16 v24, v54

    .line 1264
    .end local v61           #weekDayFormat:Ljava/lang/String;
    :cond_2
    :goto_d
    const-string v53, ""

    .line 1265
    .local v53, startTimeString:Ljava/lang/String;
    const-string v23, ""

    .line 1266
    .local v23, endTimeString:Ljava/lang/String;
    if-eqz v41, :cond_4

    .line 1267
    const-string v52, ""

    .line 1268
    .local v52, startTimeFormat:Ljava/lang/String;
    const-string v22, ""

    .line 1269
    .local v22, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v62, v0

    if-eqz v62, :cond_16

    const/16 v28, 0x1

    .line 1270
    .local v28, force24Hour:Z
    :goto_e
    and-int/lit8 v62, p6, 0x40

    if-eqz v62, :cond_17

    const/16 v27, 0x1

    .line 1272
    .local v27, force12Hour:Z
    :goto_f
    if-eqz v28, :cond_18

    .line 1273
    const/16 v59, 0x1

    .line 1279
    .local v59, use24Hour:Z
    :goto_10
    if-eqz v59, :cond_1a

    .line 1280
    const v62, 0x104008d

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v52, v22

    .line 1351
    :cond_3
    :goto_11
    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1352
    if-eqz v31, :cond_2e

    move-object/from16 v23, v53

    .line 1359
    .end local v22           #endTimeFormat:Ljava/lang/String;
    .end local v27           #force12Hour:Z
    .end local v28           #force24Hour:Z
    .end local v52           #startTimeFormat:Ljava/lang/String;
    .end local v59           #use24Hour:Z
    :cond_4
    :goto_12
    if-eqz v43, :cond_2f

    .line 1376
    :goto_13
    if-eqz v37, :cond_33

    .line 1377
    const v62, 0x1040092

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1408
    .local v13, defaultDateFormat:Ljava/lang/String;
    :goto_14
    if-eqz v42, :cond_3c

    .line 1409
    if-eqz v41, :cond_3b

    .line 1410
    const v62, 0x10400ab

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1422
    .local v29, fullFormat:Ljava/lang/String;
    :goto_15
    if-eqz v34, :cond_3e

    move/from16 v0, v49

    move/from16 v1, v19

    if-ne v0, v1, :cond_3e

    move/from16 v0, v55

    move/from16 v1, v25

    if-ne v0, v1, :cond_3e

    .line 1424
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    aput-object v65, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    .line 1560
    :goto_16
    return-object v62

    .line 1178
    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v12           #dayDistance:I
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v16           #endDay:I
    .end local v19           #endMonthNum:I
    .end local v23           #endTimeString:Ljava/lang/String;
    .end local v24           #endWeekDayString:Ljava/lang/String;
    .end local v25           #endYear:I
    .end local v29           #fullFormat:Ljava/lang/String;
    .end local v31           #isInstant:Z
    .end local v34           #noMonthDay:Z
    .end local v36           #noYear:Z
    .end local v37           #numericDate:Z
    .end local v41           #showTime:Z
    .end local v42           #showWeekDay:Z
    .end local v43           #showYear:Z
    .end local v44           #startDate:Landroid/text/format/Time;
    .end local v46           #startDay:I
    .end local v49           #startMonthNum:I
    .end local v53           #startTimeString:Ljava/lang/String;
    .end local v54           #startWeekDayString:Ljava/lang/String;
    .end local v55           #startYear:I
    .end local v60           #useUTC:Z
    :cond_5
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 1179
    .restart local v41       #showTime:Z
    :cond_6
    const/16 v42, 0x0

    goto/16 :goto_1

    .line 1180
    .restart local v42       #showWeekDay:Z
    :cond_7
    const/16 v43, 0x0

    goto/16 :goto_2

    .line 1181
    .restart local v43       #showYear:Z
    :cond_8
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 1182
    .restart local v36       #noYear:Z
    :cond_9
    const/16 v60, 0x0

    goto/16 :goto_4

    .line 1183
    .restart local v60       #useUTC:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1184
    .restart local v6       #abbrevWeekDay:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1185
    .restart local v4       #abbrevMonth:Z
    :cond_c
    const/16 v34, 0x0

    goto/16 :goto_7

    .line 1186
    .restart local v34       #noMonthDay:Z
    :cond_d
    const/16 v37, 0x0

    goto/16 :goto_8

    .line 1191
    .restart local v37       #numericDate:Z
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 1196
    .restart local v31       #isInstant:Z
    :cond_f
    if-eqz v60, :cond_10

    .line 1197
    new-instance v44, Landroid/text/format/Time;

    const-string v62, "UTC"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v44       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1199
    .end local v44           #startDate:Landroid/text/format/Time;
    :cond_10
    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    .restart local v44       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1209
    :cond_11
    if-eqz p7, :cond_12

    .line 1210
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1216
    .restart local v14       #endDate:Landroid/text/format/Time;
    :goto_17
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1217
    move-object/from16 v0, v44

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v47

    .line 1218
    .local v47, startJulianDay:I
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    .line 1219
    .local v17, endJulianDay:I
    sub-int v12, v17, v47

    .restart local v12       #dayDistance:I
    goto/16 :goto_b

    .line 1211
    .end local v12           #dayDistance:I
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v17           #endJulianDay:I
    .end local v47           #startJulianDay:I
    :cond_12
    if-eqz v60, :cond_13

    .line 1212
    new-instance v14, Landroid/text/format/Time;

    const-string v62, "UTC"

    move-object/from16 v0, v62

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v14       #endDate:Landroid/text/format/Time;
    goto :goto_17

    .line 1214
    .end local v14           #endDate:Landroid/text/format/Time;
    :cond_13
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .restart local v14       #endDate:Landroid/text/format/Time;
    goto :goto_17

    .line 1258
    .restart local v12       #dayDistance:I
    .restart local v16       #endDay:I
    .restart local v19       #endMonthNum:I
    .restart local v24       #endWeekDayString:Ljava/lang/String;
    .restart local v25       #endYear:I
    .restart local v46       #startDay:I
    .restart local v49       #startMonthNum:I
    .restart local v54       #startWeekDayString:Ljava/lang/String;
    .restart local v55       #startYear:I
    .restart local v61       #weekDayFormat:Ljava/lang/String;
    :cond_14
    const-string v61, "%A"

    goto/16 :goto_c

    .line 1261
    :cond_15
    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_d

    .line 1269
    .end local v61           #weekDayFormat:Ljava/lang/String;
    .restart local v22       #endTimeFormat:Ljava/lang/String;
    .restart local v23       #endTimeString:Ljava/lang/String;
    .restart local v52       #startTimeFormat:Ljava/lang/String;
    .restart local v53       #startTimeString:Ljava/lang/String;
    :cond_16
    const/16 v28, 0x0

    goto/16 :goto_e

    .line 1270
    .restart local v28       #force24Hour:Z
    :cond_17
    const/16 v27, 0x0

    goto/16 :goto_f

    .line 1274
    .restart local v27       #force12Hour:Z
    :cond_18
    if-eqz v27, :cond_19

    .line 1275
    const/16 v59, 0x0

    .restart local v59       #use24Hour:Z
    goto/16 :goto_10

    .line 1277
    .end local v59           #use24Hour:Z
    :cond_19
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v59

    .restart local v59       #use24Hour:Z
    goto/16 :goto_10

    .line 1283
    :cond_1a
    const v62, 0x84000

    and-int v62, v62, p6

    if-eqz v62, :cond_1c

    const/4 v5, 0x1

    .line 1284
    .local v5, abbrevTime:Z
    :goto_18
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v62, v0

    if-eqz v62, :cond_1d

    const/4 v7, 0x1

    .line 1285
    .local v7, capAMPM:Z
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v62, v0

    if-eqz v62, :cond_1e

    const/16 v35, 0x1

    .line 1286
    .local v35, noNoon:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v62, v0

    if-eqz v62, :cond_1f

    const/4 v9, 0x1

    .line 1287
    .local v9, capNoon:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v62, v0

    if-eqz v62, :cond_20

    const/16 v33, 0x1

    .line 1288
    .local v33, noMidnight:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v62, v0

    if-eqz v62, :cond_21

    const/4 v8, 0x1

    .line 1290
    .local v8, capMidnight:Z
    :goto_1d
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v62, v0

    if-nez v62, :cond_22

    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v62, v0

    if-nez v62, :cond_22

    const/16 v51, 0x1

    .line 1291
    .local v51, startOnTheHour:Z
    :goto_1e
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v62, v0

    if-nez v62, :cond_23

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v62, v0

    if-nez v62, :cond_23

    const/16 v21, 0x1

    .line 1292
    .local v21, endOnTheHour:Z
    :goto_1f
    if-eqz v5, :cond_25

    if-eqz v51, :cond_25

    .line 1293
    if-eqz v7, :cond_24

    .line 1294
    const v62, 0x1040329

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1310
    :goto_20
    if-nez v31, :cond_1b

    .line 1311
    if-eqz v5, :cond_28

    if-eqz v21, :cond_28

    .line 1312
    if-eqz v7, :cond_27

    .line 1313
    const v62, 0x1040329

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1325
    :goto_21
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    const/16 v63, 0xc

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_2b

    if-eqz v21, :cond_2b

    if-nez v35, :cond_2b

    .line 1326
    if-eqz v9, :cond_2a

    .line 1327
    const v62, 0x10403a3

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1340
    :cond_1b
    :goto_22
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    const/16 v63, 0xc

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_3

    if-eqz v51, :cond_3

    if-nez v35, :cond_3

    .line 1341
    if-eqz v9, :cond_2d

    .line 1342
    const v62, 0x10403a3

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_11

    .line 1283
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v33           #noMidnight:Z
    .end local v35           #noNoon:Z
    .end local v51           #startOnTheHour:Z
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_18

    .line 1284
    .restart local v5       #abbrevTime:Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_19

    .line 1285
    .restart local v7       #capAMPM:Z
    :cond_1e
    const/16 v35, 0x0

    goto/16 :goto_1a

    .line 1286
    .restart local v35       #noNoon:Z
    :cond_1f
    const/4 v9, 0x0

    goto/16 :goto_1b

    .line 1287
    .restart local v9       #capNoon:Z
    :cond_20
    const/16 v33, 0x0

    goto/16 :goto_1c

    .line 1288
    .restart local v33       #noMidnight:Z
    :cond_21
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 1290
    .restart local v8       #capMidnight:Z
    :cond_22
    const/16 v51, 0x0

    goto/16 :goto_1e

    .line 1291
    .restart local v51       #startOnTheHour:Z
    :cond_23
    const/16 v21, 0x0

    goto :goto_1f

    .line 1296
    .restart local v21       #endOnTheHour:Z
    :cond_24
    const v62, 0x1040328

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto :goto_20

    .line 1299
    :cond_25
    if-eqz v7, :cond_26

    .line 1300
    const v62, 0x104008f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_20

    .line 1302
    :cond_26
    const v62, 0x104008e

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_20

    .line 1315
    :cond_27
    const v62, 0x1040328

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_21

    .line 1318
    :cond_28
    if-eqz v7, :cond_29

    .line 1319
    const v62, 0x104008f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_21

    .line 1321
    :cond_29
    const v62, 0x104008e

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_21

    .line 1329
    :cond_2a
    const v62, 0x10403a2

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_22

    .line 1331
    :cond_2b
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    if-nez v62, :cond_1b

    if-eqz v21, :cond_1b

    if-nez v33, :cond_1b

    .line 1332
    if-eqz v8, :cond_2c

    .line 1333
    const v62, 0x10403a5

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_22

    .line 1335
    :cond_2c
    const v62, 0x10403a4

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_22

    .line 1344
    :cond_2d
    const v62, 0x10403a2

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_11

    .line 1352
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v33           #noMidnight:Z
    .end local v35           #noNoon:Z
    .end local v51           #startOnTheHour:Z
    :cond_2e
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_12

    .line 1363
    .end local v22           #endTimeFormat:Ljava/lang/String;
    .end local v27           #force12Hour:Z
    .end local v28           #force24Hour:Z
    .end local v52           #startTimeFormat:Ljava/lang/String;
    .end local v59           #use24Hour:Z
    :cond_2f
    if-eqz v36, :cond_30

    .line 1365
    const/16 v43, 0x0

    goto/16 :goto_13

    .line 1366
    :cond_30
    move/from16 v0, v55

    move/from16 v1, v25

    if-eq v0, v1, :cond_31

    .line 1367
    const/16 v43, 0x1

    goto/16 :goto_13

    .line 1370
    :cond_31
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1371
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 1372
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v62, v0

    move/from16 v0, v55

    move/from16 v1, v62

    if-eq v0, v1, :cond_32

    const/16 v43, 0x1

    :goto_23
    goto/16 :goto_13

    :cond_32
    const/16 v43, 0x0

    goto :goto_23

    .line 1378
    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_33
    if-eqz v43, :cond_37

    .line 1379
    if-eqz v4, :cond_35

    .line 1380
    if-eqz v34, :cond_34

    .line 1381
    const v62, 0x10400a0

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1383
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_34
    const v62, 0x104009a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1386
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_35
    if-eqz v34, :cond_36

    .line 1387
    const v62, 0x104009d

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1389
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    const v62, 0x1040095

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1393
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v4, :cond_39

    .line 1394
    if-eqz v34, :cond_38

    .line 1395
    const v62, 0x104009f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1397
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    const v62, 0x104009e

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1400
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v34, :cond_3a

    .line 1401
    const v62, 0x104009c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1403
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    const v62, 0x104009b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_14

    .line 1412
    :cond_3b
    const v62, 0x10400ac

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1415
    .end local v29           #fullFormat:Ljava/lang/String;
    :cond_3c
    if-eqz v41, :cond_3d

    .line 1416
    const v62, 0x10400ad

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1418
    .end local v29           #fullFormat:Ljava/lang/String;
    :cond_3d
    const v62, 0x10400a2

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1427
    :cond_3e
    move/from16 v0, v55

    move/from16 v1, v25

    if-ne v0, v1, :cond_3f

    if-eqz v34, :cond_40

    .line 1431
    :cond_3f
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1432
    .local v45, startDateString:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1436
    .local v15, endDateString:Ljava/lang/String;
    const/16 v62, 0x6

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v54, v62, v63

    const/16 v63, 0x1

    aput-object v45, v62, v63

    const/16 v63, 0x2

    aput-object v53, v62, v63

    const/16 v63, 0x3

    aput-object v24, v62, v63

    const/16 v63, 0x4

    aput-object v15, v62, v63

    const/16 v63, 0x5

    aput-object v23, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16

    .line 1443
    .end local v15           #endDateString:Ljava/lang/String;
    .end local v45           #startDateString:Ljava/lang/String;
    :cond_40
    if-eqz v37, :cond_45

    .line 1444
    const-string v32, "%m"

    .line 1451
    .local v32, monthFormat:Ljava/lang/String;
    :goto_24
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1452
    .local v50, startMonthString:Ljava/lang/String;
    const-string v62, "%-d"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1453
    .local v48, startMonthDayString:Ljava/lang/String;
    const-string v62, "%Y"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1455
    .local v56, startYearString:Ljava/lang/String;
    if-eqz v31, :cond_47

    const/16 v20, 0x0

    .line 1456
    .local v20, endMonthString:Ljava/lang/String;
    :goto_25
    if-eqz v31, :cond_48

    const/16 v18, 0x0

    .line 1457
    .local v18, endMonthDayString:Ljava/lang/String;
    :goto_26
    if-eqz v31, :cond_49

    const/16 v26, 0x0

    .line 1459
    .local v26, endYearString:Ljava/lang/String;
    :goto_27
    move/from16 v0, v49

    move/from16 v1, v19

    if-eq v0, v1, :cond_4a

    .line 1465
    const/16 v30, 0x0

    .line 1466
    .local v30, index:I
    if-eqz v42, :cond_41

    const/16 v30, 0x1

    .line 1467
    :cond_41
    if-eqz v43, :cond_42

    add-int/lit8 v30, v30, 0x2

    .line 1468
    :cond_42
    if-eqz v41, :cond_43

    add-int/lit8 v30, v30, 0x4

    .line 1469
    :cond_43
    if-eqz v37, :cond_44

    add-int/lit8 v30, v30, 0x8

    .line 1470
    :cond_44
    sget-object v62, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v39, v62, v30

    .line 1471
    .local v39, resId:I
    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1475
    const/16 v62, 0xa

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v54, v62, v63

    const/16 v63, 0x1

    aput-object v50, v62, v63

    const/16 v63, 0x2

    aput-object v48, v62, v63

    const/16 v63, 0x3

    aput-object v56, v62, v63

    const/16 v63, 0x4

    aput-object v53, v62, v63

    const/16 v63, 0x5

    aput-object v24, v62, v63

    const/16 v63, 0x6

    aput-object v20, v62, v63

    const/16 v63, 0x7

    aput-object v18, v62, v63

    const/16 v63, 0x8

    aput-object v26, v62, v63

    const/16 v63, 0x9

    aput-object v23, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16

    .line 1445
    .end local v18           #endMonthDayString:Ljava/lang/String;
    .end local v20           #endMonthString:Ljava/lang/String;
    .end local v26           #endYearString:Ljava/lang/String;
    .end local v30           #index:I
    .end local v32           #monthFormat:Ljava/lang/String;
    .end local v39           #resId:I
    .end local v48           #startMonthDayString:Ljava/lang/String;
    .end local v50           #startMonthString:Ljava/lang/String;
    .end local v56           #startYearString:Ljava/lang/String;
    :cond_45
    if-eqz v4, :cond_46

    .line 1446
    const v62, 0x10400c1

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .restart local v32       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1449
    .end local v32           #monthFormat:Ljava/lang/String;
    :cond_46
    const-string v32, "%B"

    .restart local v32       #monthFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1455
    .restart local v48       #startMonthDayString:Ljava/lang/String;
    .restart local v50       #startMonthString:Ljava/lang/String;
    .restart local v56       #startYearString:Ljava/lang/String;
    :cond_47
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_25

    .line 1456
    .restart local v20       #endMonthString:Ljava/lang/String;
    :cond_48
    const-string v62, "%-d"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_26

    .line 1457
    .restart local v18       #endMonthDayString:Ljava/lang/String;
    :cond_49
    const-string v62, "%Y"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_27

    .line 1482
    .restart local v26       #endYearString:Ljava/lang/String;
    :cond_4a
    move/from16 v0, v46

    move/from16 v1, v16

    if-eq v0, v1, :cond_4f

    .line 1484
    const/16 v30, 0x0

    .line 1485
    .restart local v30       #index:I
    if-eqz v42, :cond_4b

    const/16 v30, 0x1

    .line 1486
    :cond_4b
    if-eqz v43, :cond_4c

    add-int/lit8 v30, v30, 0x2

    .line 1487
    :cond_4c
    if-eqz v41, :cond_4d

    add-int/lit8 v30, v30, 0x4

    .line 1488
    :cond_4d
    if-eqz v37, :cond_4e

    add-int/lit8 v30, v30, 0x8

    .line 1489
    :cond_4e
    sget-object v62, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v39, v62, v30

    .line 1490
    .restart local v39       #resId:I
    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1494
    const/16 v62, 0xa

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v54, v62, v63

    const/16 v63, 0x1

    aput-object v50, v62, v63

    const/16 v63, 0x2

    aput-object v48, v62, v63

    const/16 v63, 0x3

    aput-object v56, v62, v63

    const/16 v63, 0x4

    aput-object v53, v62, v63

    const/16 v63, 0x5

    aput-object v24, v62, v63

    const/16 v63, 0x6

    aput-object v20, v62, v63

    const/16 v63, 0x7

    aput-object v18, v62, v63

    const/16 v63, 0x8

    aput-object v26, v62, v63

    const/16 v63, 0x9

    aput-object v23, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16

    .line 1502
    .end local v30           #index:I
    .end local v39           #resId:I
    :cond_4f
    and-int/lit8 v62, p6, 0x10

    if-eqz v62, :cond_53

    const/16 v40, 0x1

    .line 1505
    .local v40, showDate:Z
    :goto_28
    if-nez v41, :cond_50

    if-nez v40, :cond_50

    if-nez v42, :cond_50

    const/16 v40, 0x1

    .line 1508
    :cond_50
    const-string v58, ""

    .line 1509
    .local v58, timeString:Ljava/lang/String;
    if-eqz v41, :cond_51

    .line 1512
    if-eqz v31, :cond_54

    .line 1515
    move-object/from16 v58, v53

    .line 1525
    :cond_51
    :goto_29
    const-string v29, ""

    .line 1526
    const-string v11, ""

    .line 1527
    .local v11, dateString:Ljava/lang/String;
    if-eqz v40, :cond_58

    .line 1528
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1529
    if-eqz v42, :cond_56

    .line 1530
    if-eqz v41, :cond_55

    .line 1532
    const v62, 0x10400ae

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1560
    :cond_52
    :goto_2a
    const/16 v62, 0x3

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v58, v62, v63

    const/16 v63, 0x1

    aput-object v54, v62, v63

    const/16 v63, 0x2

    aput-object v11, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16

    .line 1502
    .end local v11           #dateString:Ljava/lang/String;
    .end local v40           #showDate:Z
    .end local v58           #timeString:Ljava/lang/String;
    :cond_53
    const/16 v40, 0x0

    goto :goto_28

    .line 1518
    .restart local v40       #showDate:Z
    .restart local v58       #timeString:Ljava/lang/String;
    :cond_54
    const v62, 0x10400a1

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1520
    .local v57, timeFormat:Ljava/lang/String;
    const/16 v62, 0x2

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v53, v62, v63

    const/16 v63, 0x1

    aput-object v23, v62, v63

    move-object/from16 v0, v57

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v58

    goto :goto_29

    .line 1535
    .end local v57           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_55
    const v62, 0x10400af

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_2a

    .line 1538
    :cond_56
    if-eqz v41, :cond_57

    .line 1540
    const v62, 0x1040099

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_2a

    .line 1543
    :cond_57
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v11, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16

    .line 1546
    :cond_58
    if-eqz v42, :cond_5a

    .line 1547
    if-eqz v41, :cond_59

    .line 1549
    const v62, 0x10400b0

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_2a

    .line 1552
    :cond_59
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v54, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16

    .line 1554
    :cond_5a
    if-eqz v41, :cond_52

    .line 1555
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v58, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_16
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1606
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 693
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 695
    const-wide/16 v2, 0x0

    .line 696
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 697
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 699
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 700
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 701
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 703
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 704
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 705
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 707
    :cond_1
    move-wide v6, p1

    .line 710
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 711
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    :cond_2
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 755
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 756
    move-object v0, p0

    .line 757
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 762
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 763
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    :goto_1
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    cmp-long v1, p4, v3

    if-gez v1, :cond_2

    .line 770
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    :goto_2
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 760
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 765
    :cond_1
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 772
    :cond_2
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 777
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 8
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 722
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 723
    move-object v0, p0

    .line 724
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 729
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    cmp-long v1, p4, v3

    if-gez v1, :cond_1

    .line 732
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    :goto_1
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    cmp-long v1, p6, v3

    if-gez v1, :cond_2

    .line 739
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    :goto_2
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 727
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 734
    :cond_1
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 741
    :cond_2
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 746
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 804
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 805
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 806
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 807
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 808
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 812
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 815
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 819
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 817
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 3
    .parameter "ampm"

    .prologue
    .line 339
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    add-int/lit8 v2, p0, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 319
    sparse-switch p1, :sswitch_data_0

    .line 325
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 328
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 329
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, -0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 321
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 322
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 323
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 324
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 359
    sparse-switch p1, :sswitch_data_0

    .line 365
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 368
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 360
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 361
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 362
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 363
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 364
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static declared-synchronized getNumberOfDaysPassed(JJ)J
    .locals 6
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 541
    const-class v3, Landroid/text/format/DateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 542
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 544
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 545
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 546
    .local v0, day1:I
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 547
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 548
    .local v1, day2:I
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v4, v2

    monitor-exit v3

    return-wide v4

    .line 541
    .end local v0           #day1:I
    .end local v1           #day2:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 576
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 578
    .local v15, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 579
    .local v13, now:J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 584
    .local v11, duration:J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    .line 585
    const-wide/32 p5, 0x240c8400

    .line 590
    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 593
    .local v18, timeClause:Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    .line 594
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 595
    .local v16, relativeClause:Ljava/lang/CharSequence;
    const v3, 0x10403a1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 601
    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .local v17, result:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 586
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 587
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 597
    .restart local v18       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 598
    .local v10, dateClause:Ljava/lang/CharSequence;
    const v3, 0x1040098

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 11
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 615
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 616
    .local v7, startTime:Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 617
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 618
    .local v1, currentTime:Landroid/text/format/Time;
    invoke-virtual {v1, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 620
    iget-wide v8, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    .line 621
    .local v6, startDay:I
    iget-wide v8, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 623
    .local v0, currentDay:I
    sub-int v8, v0, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 624
    .local v2, days:I
    cmp-long v8, p3, p1

    if-lez v8, :cond_0

    const/4 v4, 0x1

    .line 626
    .local v4, past:Z
    :goto_0
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2

    .line 627
    if-eqz v4, :cond_1

    .line 628
    const v8, 0x104008a

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 644
    :goto_1
    return-object v8

    .line 624
    .end local v4           #past:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 630
    .restart local v4       #past:Z
    :cond_1
    const v8, 0x104008c

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 632
    :cond_2
    if-nez v2, :cond_3

    .line 633
    const v8, 0x104008b

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 637
    :cond_3
    if-eqz v4, :cond_4

    .line 638
    const v5, 0x1130004

    .line 643
    .local v5, resId:I
    :goto_2
    invoke-virtual {p0, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, format:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 640
    .end local v3           #format:Ljava/lang/String;
    .end local v5           #resId:I
    :cond_4
    const v5, 0x1130008

    .restart local v5       #resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 429
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 430
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 15
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 455
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 456
    .local v13, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int v0, v0, p6

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 458
    .local v6, abbrevRelative:Z
    :goto_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const/4 v12, 0x1

    .line 459
    .local v12, past:Z
    :goto_1
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 463
    .local v9, duration:J
    const-wide/32 v0, 0xea60

    cmp-long v0, v9, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0xea60

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    .line 464
    const-wide/16 v0, 0x3e8

    div-long v7, v9, v0

    .line 465
    .local v7, count:J
    if-eqz v12, :cond_3

    .line 466
    if-eqz v6, :cond_2

    .line 467
    const v14, 0x1130009

    .line 529
    .local v14, resId:I
    :goto_2
    long-to-int v0, v7

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 530
    .local v11, format:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v7           #count:J
    .end local v11           #format:Ljava/lang/String;
    .end local v14           #resId:I
    :goto_3
    return-object v0

    .line 456
    .end local v6           #abbrevRelative:Z
    .end local v9           #duration:J
    .end local v12           #past:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 458
    .restart local v6       #abbrevRelative:Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 469
    .restart local v7       #count:J
    .restart local v9       #duration:J
    .restart local v12       #past:Z
    :cond_2
    const/high16 v14, 0x113

    .restart local v14       #resId:I
    goto :goto_2

    .line 472
    .end local v14           #resId:I
    :cond_3
    if-eqz v6, :cond_4

    .line 473
    const v14, 0x113000d

    .restart local v14       #resId:I
    goto :goto_2

    .line 475
    .end local v14           #resId:I
    :cond_4
    const v14, 0x1130005

    .restart local v14       #resId:I
    goto :goto_2

    .line 478
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v9, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p4, v0

    if-gez v0, :cond_9

    .line 479
    const-wide/32 v0, 0xea60

    div-long v7, v9, v0

    .line 480
    .restart local v7       #count:J
    if-eqz v12, :cond_7

    .line 481
    if-eqz v6, :cond_6

    .line 482
    const v14, 0x113000a

    .restart local v14       #resId:I
    goto :goto_2

    .line 484
    .end local v14           #resId:I
    :cond_6
    const v14, 0x1130001

    .restart local v14       #resId:I
    goto :goto_2

    .line 487
    .end local v14           #resId:I
    :cond_7
    if-eqz v6, :cond_8

    .line 488
    const v14, 0x113000e

    .restart local v14       #resId:I
    goto :goto_2

    .line 490
    .end local v14           #resId:I
    :cond_8
    const v14, 0x1130006

    .restart local v14       #resId:I
    goto :goto_2

    .line 493
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_9
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v9, v0

    if-gez v0, :cond_d

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_d

    .line 494
    const-wide/32 v0, 0x36ee80

    div-long v7, v9, v0

    .line 495
    .restart local v7       #count:J
    if-eqz v12, :cond_b

    .line 496
    if-eqz v6, :cond_a

    .line 497
    const v14, 0x113000b

    .restart local v14       #resId:I
    goto :goto_2

    .line 499
    .end local v14           #resId:I
    :cond_a
    const v14, 0x1130002

    .restart local v14       #resId:I
    goto :goto_2

    .line 502
    .end local v14           #resId:I
    :cond_b
    if-eqz v6, :cond_c

    .line 503
    const v14, 0x113000f

    .restart local v14       #resId:I
    goto :goto_2

    .line 505
    .end local v14           #resId:I
    :cond_c
    const v14, 0x1130007

    .restart local v14       #resId:I
    goto :goto_2

    .line 508
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_d
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v9, v0

    if-gez v0, :cond_11

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p4, v0

    if-gez v0, :cond_11

    .line 509
    invoke-static/range {p0 .. p3}, Landroid/text/format/DateUtils;->getNumberOfDaysPassed(JJ)J

    move-result-wide v7

    .line 510
    .restart local v7       #count:J
    if-eqz v12, :cond_f

    .line 511
    if-eqz v6, :cond_e

    .line 512
    const v14, 0x113000c

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 514
    .end local v14           #resId:I
    :cond_e
    const v14, 0x1130004

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 517
    .end local v14           #resId:I
    :cond_f
    if-eqz v6, :cond_10

    .line 518
    const v14, 0x1130010

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 520
    .end local v14           #resId:I
    :cond_10
    const v14, 0x1130008

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 526
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_11
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1677
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1628
    .local v8, now:J
    sub-long v13, v8, p1

    .line 1630
    .local v13, span:J
    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    .line 1631
    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 1632
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1635
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 1636
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1639
    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1640
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1643
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    .line 1645
    const/4 v7, 0x1

    .local v7, flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1646
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1647
    .local v12, result:Ljava/lang/String;
    const v10, 0x1040393

    .line 1661
    .local v10, prepositionId:I
    :goto_0
    if-eqz p3, :cond_2

    .line 1662
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1663
    .local v11, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1665
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v15

    .line 1666
    return-object v12

    .line 1648
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    .line 1650
    const v7, 0x20014

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1651
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1654
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x1040392

    .line 1655
    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1657
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    const v7, 0x10010

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1658
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1659
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x1040392

    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1665
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 392
    sparse-switch p1, :sswitch_data_0

    .line 399
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 402
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 393
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 394
    .restart local v0       #list:[I
    goto :goto_0

    .line 395
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 396
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 397
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 398
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 648
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 650
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 654
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 655
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 656
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 658
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 659
    const v2, 0x10403a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 660
    const v2, 0x10403a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 662
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 838
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 839
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 841
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 842
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 843
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 845
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 846
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v0, 0x1

    .line 858
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 865
    :cond_0
    :goto_0
    return v0

    .line 861
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 865
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 828
    if-eqz p0, :cond_0

    .line 829
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "millis"

    .prologue
    .line 670
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 672
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static toDigitChar(J)C
    .locals 2
    .parameter "digit"

    .prologue
    .line 782
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 879
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 880
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 881
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 882
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 922
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 923
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 924
    div-int/lit8 v0, v0, 0xa

    .line 925
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 926
    div-int/lit8 v0, v0, 0xa

    .line 927
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 928
    div-int/lit8 v0, v0, 0xa

    .line 929
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 931
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 932
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 933
    div-int/lit8 v0, v0, 0xa

    .line 934
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 936
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 937
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 938
    div-int/lit8 v0, v0, 0xa

    .line 939
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 941
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 943
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 944
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 945
    div-int/lit8 v0, v0, 0xa

    .line 946
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 948
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 949
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 950
    div-int/lit8 v0, v0, 0xa

    .line 951
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 953
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 954
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 955
    div-int/lit8 v0, v0, 0xa

    .line 956
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 958
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 899
    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 901
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 905
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 903
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
