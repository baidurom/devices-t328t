.class Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakelockHistory"
.end annotation


# instance fields
.field mAcquireTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mLockTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mName:Ljava/lang/String;

.field mReleaseTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSum:J

.field mTempSum:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 348
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mName:Ljava/lang/String;

    .line 350
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mSum:J

    .line 351
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mAcquireTimeList:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mReleaseTimeList:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mLockTypes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;-><init>()V

    return-void
.end method
