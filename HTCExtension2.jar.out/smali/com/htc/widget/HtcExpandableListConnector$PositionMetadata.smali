.class public Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "HtcExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

.field public position:Lcom/htc/widget/HtcExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    .locals 4

    .prologue
    .line 1158
    sget-object v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1159
    :try_start_0
    sget-object v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1160
    sget-object v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    .line 1164
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->resetState()V

    .line 1166
    .end local v0           #pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :goto_0
    return-object v0

    .line 1162
    :cond_0
    :try_start_1
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 1164
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILcom/htc/widget/HtcExpandableListConnector$GroupMetadata;I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    .locals 2
    .parameter "flatListPos"
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "groupMetadata"
    .parameter "groupInsertIndex"

    .prologue
    .line 1149
    invoke-static {}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1150
    .local v0, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 1151
    iput-object p4, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 1152
    iput p5, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1153
    return-object v0
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1136
    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 1137
    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1139
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1174
    sget-object v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1175
    :try_start_0
    sget-object v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1176
    sget-object v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_0
    monitor-exit v1

    .line 1179
    return-void

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
