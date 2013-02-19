.class public Lcom/android/internal/telephony/RegStateResponse;
.super Ljava/lang/Object;
.source "RegStateResponse.java"


# instance fields
.field private mRegStates:[[Ljava/lang/String;


# direct methods
.method public constructor <init>([[Ljava/lang/String;)V
    .locals 0
    .parameter "regstates"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getNumRecords()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    array-length v0, v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecord(I)[Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegStateResponse;->getNumRecords()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{ "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegStateResponse;->getNumRecords()I

    move-result v1

    .line 54
    .local v1, numRecs:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumRecords:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const/4 v2, 0x0

    .local v2, rec:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, strings:[Ljava/lang/String;
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    if-eqz v4, :cond_2

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 61
    aget-object v5, v4, v0

    if-eqz v5, :cond_1

    .line 62
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :goto_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 67
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 71
    .end local v0           #i:I
    :cond_2
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_3
    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_4

    .line 75
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v4           #strings:[Ljava/lang/String;
    :cond_5
    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
