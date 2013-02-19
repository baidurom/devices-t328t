.class public Lcom/htc/text/tag/ProfileTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "ProfileTag.java"


# instance fields
.field private name:Ljava/lang/String;

.field private nameAlt:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 10
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/text/tag/ProfileTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "name_alt"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->uri:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->uri:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    .line 16
    invoke-static {p3}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 29
    iget-object v9, p0, Lcom/htc/text/tag/ProfileTag;->uri:Ljava/lang/String;

    const-string v10, "&"

    const-string v11, "&amp;"

    invoke-static {v9, v10, v11}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, escapedAmpersandUri:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    const-string v10, "&"

    const-string v11, "&amp;"

    invoke-static {v9, v10, v11}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, escapedAmpersandName:Ljava/lang/String;
    const-string v9, "<"

    const-string v10, "&lt;"

    invoke-static {v2, v9, v10}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, escapedLessThanUri:Ljava/lang/String;
    const-string v9, "<"

    const-string v10, "&lt;"

    invoke-static {v0, v9, v10}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, escapedLessThanName:Ljava/lang/String;
    const-string v9, ">"

    const-string v10, "&gt;"

    invoke-static {v8, v9, v10}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, escapedGreaterThanUri:Ljava/lang/String;
    const-string v9, ">"

    const-string v10, "&gt;"

    invoke-static {v6, v9, v10}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, escapedGreaterThanName:Ljava/lang/String;
    const-string v9, ""

    iget-object v10, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<pf uri=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" />"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 41
    :goto_0
    return-object v9

    .line 38
    :cond_0
    iget-object v9, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    const-string v10, "&"

    const-string v11, "&amp;"

    invoke-static {v9, v10, v11}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, escapedAmpersandNameAlt:Ljava/lang/String;
    const-string v9, "<"

    const-string v10, "&lt;"

    invoke-static {v1, v9, v10}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, escapedLessThanNameAlt:Ljava/lang/String;
    const-string v9, ">"

    const-string v10, "&gt;"

    invoke-static {v7, v9, v10}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, escapedGreaterThanNameAlt:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<pf uri=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" name_alt=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" />"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    return-object v0
.end method
