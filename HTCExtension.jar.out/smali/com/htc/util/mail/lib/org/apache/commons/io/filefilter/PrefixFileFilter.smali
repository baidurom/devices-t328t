.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "PrefixFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

.field private final prefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"

    .prologue
    .line 62
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "prefix"
    .parameter "caseSensitivity"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The prefix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 79
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "prefixes"

    .prologue
    .line 123
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/util/List;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "prefixes"
    .parameter "caseSensitivity"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of prefixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 141
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 142
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "prefixes"

    .prologue
    .line 92
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>([Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V

    .line 93
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)V
    .locals 2
    .parameter "prefixes"
    .parameter "caseSensitivity"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of prefixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 112
    if-nez p2, :cond_1

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 113
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x1

    .line 161
    :goto_1
    return v2

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x1

    .line 181
    :goto_1
    return v1

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 199
    if-lez v1, :cond_0

    .line 200
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
