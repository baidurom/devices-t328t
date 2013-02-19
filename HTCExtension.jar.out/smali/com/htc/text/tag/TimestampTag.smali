.class public Lcom/htc/text/tag/TimestampTag;
.super Ljava/lang/Object;
.source "TimestampTag.java"

# interfaces
.implements Lcom/htc/text/tag/ITag;


# instance fields
.field private mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/htc/text/tag/TimestampTag;->mTimestamp:J

    .line 9
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ts value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/text/tag/TimestampTag;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    return-object v0
.end method
