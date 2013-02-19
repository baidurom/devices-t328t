.class public Lcom/htc/app/FilePickerRecentUtil;
.super Ljava/lang/Object;
.source "FilePickerRecentUtil.java"


# static fields
.field static final GROUP_OLDER:I = 0x5

.field static final GROUP_ONE_MONTH:I = 0x4

.field static final GROUP_ONE_WEEK:I = 0x3

.field static final GROUP_TODAY:I = 0x1

.field static final GROUP_YESTERDAY:I = 0x2

.field private static final MillisOfDay:J = 0x5265c00L

.field private static final ONE_MONTH:J = 0x1eL

.field private static final ONE_WEEK:J = 0x7L

.field private static final YESTERDAY:J = 0x1L


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerRecentUtil;->DEBUG:Z

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static checkToday(J)Z
    .locals 4
    .parameter "openedTime"

    .prologue
    .line 49
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 50
    .local v0, timeNow:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 52
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 53
    .local v1, timeOpened:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 55
    iget v2, v0, Landroid/text/format/Time;->yearDay:I

    iget v3, v1, Landroid/text/format/Time;->yearDay:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/text/format/Time;->year:I

    iget v3, v1, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_0

    .line 56
    const/4 v2, 0x1

    .line 58
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getRecentGroup(J)I
    .locals 12
    .parameter "openedTime"

    .prologue
    const-wide/16 v10, 0x1

    const/16 v7, 0x3b

    const/4 v5, 0x1

    .line 23
    invoke-static {p0, p1}, Lcom/htc/app/FilePickerRecentUtil;->checkToday(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v5

    .line 26
    :cond_1
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 27
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 28
    const/16 v6, 0x17

    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 29
    iput v7, v4, Landroid/text/format/Time;->minute:I

    .line 30
    iput v7, v4, Landroid/text/format/Time;->second:I

    .line 31
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 32
    .local v0, currentTime:J
    sub-long v6, v0, p0

    const-wide/32 v8, 0x5265c00

    div-long v2, v6, v8

    .line 34
    .local v2, day:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 36
    cmp-long v5, v2, v10

    if-nez v5, :cond_2

    .line 37
    const/4 v5, 0x2

    goto :goto_0

    .line 38
    :cond_2
    cmp-long v5, v2, v10

    if-lez v5, :cond_3

    const-wide/16 v5, 0x7

    cmp-long v5, v2, v5

    if-gez v5, :cond_3

    .line 39
    const/4 v5, 0x3

    goto :goto_0

    .line 40
    :cond_3
    const-wide/16 v5, 0x6

    cmp-long v5, v2, v5

    if-lez v5, :cond_4

    const-wide/16 v5, 0x1e

    cmp-long v5, v2, v5

    if-gez v5, :cond_4

    .line 41
    const/4 v5, 0x4

    goto :goto_0

    .line 43
    :cond_4
    const/4 v5, 0x5

    goto :goto_0
.end method
