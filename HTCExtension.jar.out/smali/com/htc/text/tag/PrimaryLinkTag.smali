.class public Lcom/htc/text/tag/PrimaryLinkTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryLinkTag.java"


# instance fields
.field private description:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "description"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->uri:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->description:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->uri:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/htc/text/tag/PrimaryLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->description:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 20
    iget-object v6, p0, Lcom/htc/text/tag/PrimaryLinkTag;->uri:Ljava/lang/String;

    const-string v7, "&"

    const-string v8, "&amp;"

    invoke-static {v6, v7, v8}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, escapedAmpersandUri:Ljava/lang/String;
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v1, v6, v7}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, escapedLessThanUri:Ljava/lang/String;
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v5, v6, v7}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, escapedGreaterThanUri:Ljava/lang/String;
    const-string v6, ""

    iget-object v7, p0, Lcom/htc/text/tag/PrimaryLinkTag;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<lk1 uri=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</lk1>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 29
    :goto_0
    return-object v6

    .line 26
    :cond_0
    iget-object v6, p0, Lcom/htc/text/tag/PrimaryLinkTag;->description:Ljava/lang/String;

    const-string v7, "&"

    const-string v8, "&amp;"

    invoke-static {v6, v7, v8}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, escapedAmpersandDescription:Ljava/lang/String;
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v0, v6, v7}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, escapedLessThanDescription:Ljava/lang/String;
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v4, v6, v7}, Lcom/htc/text/tag/PrimaryLinkTag;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, escapedGreaterThanDescription:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<lk1 uri=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</lk1>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, ""

    iget-object v1, p0, Lcom/htc/text/tag/PrimaryLinkTag;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->uri:Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryLinkTag;->description:Ljava/lang/String;

    goto :goto_0
.end method
