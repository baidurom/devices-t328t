.class public Lcom/htc/net/wimax/WimaxQosStatistics;
.super Lcom/htc/net/FourG/QosStatistics;
.source "WimaxQosStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/WimaxQosStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private totalArqBlocks:J

.field private totalArqBlocksRetry:J

.field private totalArqDiscards:J

.field private totalArqResets:J

.field private totalArqSyncLoss:J

.field private totalHarqBlocks:J

.field private totalHarqBlocksRetry:J

.field private totalHarqDiscards:J

.field private totalHarqResets:J

.field private totalHarqSyncLoss:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/htc/net/wimax/WimaxQosStatistics$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/WimaxQosStatistics$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000

    .line 22
    invoke-direct {p0}, Lcom/htc/net/FourG/QosStatistics;-><init>()V

    .line 23
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocks:J

    .line 24
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocksRetry:J

    .line 25
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqResets:J

    .line 26
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqSyncLoss:J

    .line 27
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqDiscards:J

    .line 28
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocks:J

    .line 29
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocksRetry:J

    .line 30
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqResets:J

    .line 31
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqSyncLoss:J

    .line 32
    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqDiscards:J

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/QosStatistics;-><init>(Landroid/os/Parcel;)V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocks:J

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocksRetry:J

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqResets:J

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqSyncLoss:J

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqDiscards:J

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocks:J

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocksRetry:J

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqResets:J

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqSyncLoss:J

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqDiscards:J

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/wimax/WimaxQosStatistics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxQosStatistics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getTotalArqBlocks()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocks:J

    return-wide v0
.end method

.method public getTotalArqBlocksRetry()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocksRetry:J

    return-wide v0
.end method

.method public getTotalArqDiscards()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqDiscards:J

    return-wide v0
.end method

.method public getTotalArqResets()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqResets:J

    return-wide v0
.end method

.method public getTotalArqSyncLoss()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqSyncLoss:J

    return-wide v0
.end method

.method public getTotalHarqBlocks()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocks:J

    return-wide v0
.end method

.method public getTotalHarqBlocksRetry()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocksRetry:J

    return-wide v0
.end method

.method public getTotalHarqDiscards()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqDiscards:J

    return-wide v0
.end method

.method public getTotalHarqResets()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqResets:J

    return-wide v0
.end method

.method public getTotalHarqSyncLoss()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqSyncLoss:J

    return-wide v0
.end method

.method public setTotalArqBlockRetry(J)V
    .locals 0
    .parameter "totalArqBlocksRetry"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocksRetry:J

    .line 63
    return-void
.end method

.method public setTotalArqBlocks(J)V
    .locals 0
    .parameter "totalArqBlocks"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocks:J

    .line 48
    return-void
.end method

.method public setTotalArqDiscards(J)V
    .locals 0
    .parameter "totalArqDiscards"

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqDiscards:J

    .line 108
    return-void
.end method

.method public setTotalArqResets(J)V
    .locals 0
    .parameter "totalArqResets"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqResets:J

    .line 78
    return-void
.end method

.method public setTotalArqSyncLoss(J)V
    .locals 0
    .parameter "totalArqSyncLoss"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqSyncLoss:J

    .line 93
    return-void
.end method

.method public setTotalHarqBlockRetry(J)V
    .locals 0
    .parameter "totalHarqBlocksRetry"

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocksRetry:J

    .line 138
    return-void
.end method

.method public setTotalHarqBlocks(J)V
    .locals 0
    .parameter "totalHarqBlocks"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocks:J

    .line 123
    return-void
.end method

.method public setTotalHarqDiscards(J)V
    .locals 0
    .parameter "totalHarqDiscards"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqDiscards:J

    .line 183
    return-void
.end method

.method public setTotalHarqResets(J)V
    .locals 0
    .parameter "totalHarqResets"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqResets:J

    .line 153
    return-void
.end method

.method public setTotalHarqSyncLoss(J)V
    .locals 0
    .parameter "totalHarqSyncLoss"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqSyncLoss:J

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/WimaxQosStatistics;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-super {p0}, Lcom/htc/net/FourG/QosStatistics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalArqBlocks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocks:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalArqBlocksRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocksRetry:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalArqResets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqResets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalArqSyncLoss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqSyncLoss:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalArqDiscards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqDiscards:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalHarqBlocks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocks:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalHarqBlocksRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocksRetry:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalHarqResets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqResets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalHarqSyncLoss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqSyncLoss:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalHarqDiscards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqDiscards:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 210
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/QosStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 211
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocks:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqBlocksRetry:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqResets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqSyncLoss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalArqDiscards:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 216
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocks:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqBlocksRetry:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqResets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqSyncLoss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxQosStatistics;->totalHarqDiscards:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    return-void
.end method
