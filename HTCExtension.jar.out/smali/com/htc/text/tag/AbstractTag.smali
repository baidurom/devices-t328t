.class public abstract Lcom/htc/text/tag/AbstractTag;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Lcom/htc/text/tag/ITag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "pattern"
    .parameter "replace"

    .prologue
    .line 6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 8
    .local v2, startIndex:I
    const/4 v0, 0x0

    .line 10
    .local v0, endIndex:I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 11
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v0, v3

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static getNonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const-string v0, ""

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/htc/text/tag/AbstractTag;->stripNonValidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static stripNonValidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 24
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v2, result:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    :cond_0
    const-string v3, ""

    .line 41
    :goto_0
    return-object v3

    .line 30
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 32
    .local v0, current:C
    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    const/16 v3, 0xd

    if-eq v0, v3, :cond_4

    const/16 v3, 0x20

    if-lt v0, v3, :cond_2

    const v3, 0xd7ff

    if-gt v0, v3, :cond_2

    const/16 v3, 0x2028

    if-ne v0, v3, :cond_4

    :cond_2
    const v3, 0xe000

    if-lt v0, v3, :cond_3

    const v3, 0xfffd

    if-le v0, v3, :cond_4

    :cond_3
    const/high16 v3, 0x1

    if-lt v0, v3, :cond_5

    const v3, 0x10ffff

    if-gt v0, v3, :cond_5

    .line 38
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v0           #current:C
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
