.class public Lcom/htc/text/util/HtcStringUtils;
.super Ljava/lang/Object;
.source "HtcStringUtils.java"


# static fields
.field public static final BLANK_CHAR:Ljava/lang/CharSequence;

.field public static final FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_HOUR_MIN_12:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_HOUR_MIN_24:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_MONTH_DAY_HOUR_MIN:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

.field public static final HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

.field public static final LINE_FEED_CHAR:Ljava/lang/CharSequence;

.field public static final LINE_FEED_TAG:Ljava/lang/CharSequence;

.field public static final NOT_A_CHAR:Ljava/lang/CharSequence;

.field public static final SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, " "

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->BLANK_CHAR:Ljava/lang/CharSequence;

    .line 13
    const-string v0, "\n"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LINE_FEED_CHAR:Ljava/lang/CharSequence;

    .line 18
    const-string v0, "<br />"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LINE_FEED_TAG:Ljava/lang/CharSequence;

    .line 23
    const-string/jumbo v0, "\ufffc"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->NOT_A_CHAR:Ljava/lang/CharSequence;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE."

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    .line 49
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN_12:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN_24:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM. d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM. d, h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY_HOUR_MIN:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "format"
    .parameter "time"

    .prologue
    const v11, 0x20401b1

    const/4 v6, 0x2

    const-wide/32 v9, 0x36ee80

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 71
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 72
    .local v0, d:Ljava/util/Date;
    sget-object v4, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    if-ne p1, v4, :cond_8

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 74
    .local v1, diff:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 75
    const-wide/16 v1, 0x0

    .line 77
    :cond_0
    const-wide/32 v4, 0xc350

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 78
    const v4, 0x20401b3

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .end local v1           #diff:J
    :goto_0
    return-object v4

    .line 79
    .restart local v1       #diff:J
    :cond_1
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 80
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 81
    :cond_2
    cmp-long v4, v1, v9

    if-gez v4, :cond_3

    .line 82
    const v4, 0x20401b4

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 84
    :cond_3
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_6

    .line 85
    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_4

    .line 86
    const v4, 0x20401b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 88
    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 89
    .local v3, nowd:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 90
    const v4, 0x20401b5

    new-array v5, v7, [Ljava/lang/Object;

    div-long v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 93
    :cond_5
    const v4, 0x20401b6

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 97
    .end local v3           #nowd:Ljava/util/Date;
    :cond_6
    const-wide/32 v4, 0x14997000

    cmp-long v4, v1, v4

    if-gez v4, :cond_7

    .line 98
    const v4, 0x20401b8

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 101
    :cond_7
    const v4, 0x20401b9

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 104
    .end local v1           #diff:J
    :cond_8
    sget-object v4, Lcom/htc/text/util/HtcStringUtils;->SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    if-ne p1, v4, :cond_10

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 106
    .restart local v1       #diff:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_9

    .line 107
    const-wide/16 v1, 0x0

    .line 109
    :cond_9
    const-wide/32 v4, 0xc350

    cmp-long v4, v1, v4

    if-gez v4, :cond_a

    .line 110
    const v4, 0x20401b3

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 111
    :cond_a
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_b

    .line 112
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 113
    :cond_b
    cmp-long v4, v1, v9

    if-gez v4, :cond_c

    .line 114
    const v4, 0x20401b4

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 116
    :cond_c
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_f

    .line 117
    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_d

    .line 118
    const v4, 0x20401b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 120
    :cond_d
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 121
    .restart local v3       #nowd:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_e

    .line 122
    const v4, 0x20401b5

    new-array v5, v7, [Ljava/lang/Object;

    div-long v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 125
    :cond_e
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 131
    .end local v3           #nowd:Ljava/util/Date;
    :cond_f
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 135
    .end local v1           #diff:J
    :cond_10
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method
