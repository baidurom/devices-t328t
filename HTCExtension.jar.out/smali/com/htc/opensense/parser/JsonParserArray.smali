.class public Lcom/htc/opensense/parser/JsonParserArray;
.super Lcom/htc/opensense/parser/BasicParserArray;
.source "JsonParserArray.java"


# instance fields
.field mJsonArray:Lcom/htc/gson/JsonArray;


# direct methods
.method public constructor <init>(Lcom/htc/gson/JsonArray;)V
    .locals 0
    .parameter "array"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/opensense/parser/BasicParserArray;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    .line 13
    return-void
.end method


# virtual methods
.method public getAsJoinString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v3}, Lcom/htc/gson/JsonArray;->size()I

    move-result v2

    .local v2, j:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 72
    if-gez v1, :cond_0

    .line 73
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v3, v1}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isParseable()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseFromStr(Lcom/htc/gson/JsonElement;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "element"

    .prologue
    .line 98
    new-instance v0, Lcom/htc/gson/JsonParser;

    invoke-direct {v0}, Lcom/htc/gson/JsonParser;-><init>()V

    .line 99
    .local v0, parser:Lcom/htc/gson/JsonParser;
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object p1

    .line 100
    return-object p1
.end method

.method public parseInt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0
.end method

.method public parseObject(I)Lcom/htc/opensense/parser/BasicParserObj;
    .locals 3
    .parameter "index"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 40
    .local v0, element:Lcom/htc/gson/JsonElement;
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lcom/htc/opensense/parser/JsonParserArray;->parseFromStr(Lcom/htc/gson/JsonElement;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 43
    :cond_0
    new-instance v1, Lcom/htc/opensense/parser/JsonParserObject;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/opensense/parser/JsonParserObject;-><init>(Lcom/htc/gson/JsonObject;)V

    return-object v1
.end method

.method public parseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v0}, Lcom/htc/gson/JsonArray;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserArray;->mJsonArray:Lcom/htc/gson/JsonArray;

    invoke-virtual {v0}, Lcom/htc/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
