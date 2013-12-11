.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "AgeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acceptOlder:Z

.field private final cutoff:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "cutoff"

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .parameter "cutoff"
    .parameter "acceptOlder"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 72
    iput-boolean p3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    .line 73
    iput-wide p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "cutoffReference"

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .parameter "cutoffReference"
    .parameter "acceptOlder"

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .parameter "cutoffDate"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Z)V
    .locals 2
    .parameter "cutoffDate"
    .parameter "acceptOlder"

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    .line 96
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 141
    iget-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    invoke-static {p1, v1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    .line 142
    .local v0, newer:Z
    iget-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .end local v0           #newer:Z
    :cond_0
    :goto_0
    return v0

    .restart local v0       #newer:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    if-eqz v1, :cond_0

    const-string v0, "<="

    .line 156
    .local v0, condition:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0           #condition:Ljava/lang/String;
    :cond_0
    const-string v0, ">"

    goto :goto_0
.end method
