.class Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByWeekNo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 4
    .parameter "value"
    .parameter "er"

    .prologue
    .line 861
    const/16 v1, -0x35

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 862
    .local v0, byweekno:[I
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    .line 863
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    .line 864
    const/16 v1, 0x400

    return v1
.end method
