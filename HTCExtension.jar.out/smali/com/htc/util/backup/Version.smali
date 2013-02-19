.class public Lcom/htc/util/backup/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field public build:I

.field public major:I

.field public minor:I

.field public revision:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/backup/Version;->major:I

    .line 16
    iput v1, p0, Lcom/htc/util/backup/Version;->minor:I

    .line 21
    iput v1, p0, Lcom/htc/util/backup/Version;->revision:I

    .line 26
    iput v1, p0, Lcom/htc/util/backup/Version;->build:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/htc/util/backup/Version;
    .locals 4
    .parameter "version"

    .prologue
    .line 29
    new-instance v2, Lcom/htc/util/backup/Version;

    invoke-direct {v2}, Lcom/htc/util/backup/Version;-><init>()V

    .line 30
    .local v2, v:Lcom/htc/util/backup/Version;
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, split:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 32
    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->major:I

    goto :goto_1

    .line 37
    :pswitch_1
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->minor:I

    goto :goto_1

    .line 40
    :pswitch_2
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->revision:I

    goto :goto_1

    .line 43
    :pswitch_3
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->build:I

    goto :goto_1

    .line 47
    :cond_0
    return-object v2

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public largerThan(Lcom/htc/util/backup/Version;)Z
    .locals 4
    .parameter "version"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-le v2, v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-gt v2, v3, :cond_0

    .line 90
    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-gt v2, v3, :cond_0

    .line 95
    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-ge v2, v3, :cond_4

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_4
    iget v2, p0, Lcom/htc/util/backup/Version;->build:I

    iget v3, p1, Lcom/htc/util/backup/Version;->build:I

    if-gt v2, v3, :cond_0

    .line 100
    iget v0, p0, Lcom/htc/util/backup/Version;->build:I

    iget v2, p1, Lcom/htc/util/backup/Version;->build:I

    if-ge v0, v2, :cond_5

    move v0, v1

    .line 101
    goto :goto_0

    :cond_5
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public lessEqualThan(Lcom/htc/util/backup/Version;)Z
    .locals 4
    .parameter "version"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 51
    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-ge v2, v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-lt v2, v3, :cond_0

    .line 58
    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-le v2, v3, :cond_3

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-lt v2, v3, :cond_0

    .line 63
    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-le v2, v3, :cond_4

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_4
    iget v2, p0, Lcom/htc/util/backup/Version;->build:I

    iget v3, p1, Lcom/htc/util/backup/Version;->build:I

    if-lt v2, v3, :cond_0

    .line 68
    iget v2, p0, Lcom/htc/util/backup/Version;->build:I

    iget v3, p1, Lcom/htc/util/backup/Version;->build:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 69
    goto :goto_0
.end method
