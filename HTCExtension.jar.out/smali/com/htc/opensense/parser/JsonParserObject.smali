.class public Lcom/htc/opensense/parser/JsonParserObject;
.super Lcom/htc/opensense/parser/BasicParserObj;
.source "JsonParserObject.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonParserObject"


# instance fields
.field mJsonObj:Lcom/htc/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/htc/gson/JsonObject;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/opensense/parser/BasicParserObj;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    .line 22
    return-void
.end method


# virtual methods
.method public getEntrySet()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/parser/BasicParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v4, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/opensense/parser/BasicParser;>;"
    iget-object v5, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v5}, Lcom/htc/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 156
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 157
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    .line 160
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/htc/opensense/parser/JsonParserObject;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/opensense/parser/JsonParserObject;-><init>(Lcom/htc/gson/JsonObject;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/htc/opensense/parser/JsonParserArray;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/opensense/parser/JsonParserArray;-><init>(Lcom/htc/gson/JsonArray;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/htc/opensense/parser/JsonParserPrimitive;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/opensense/parser/JsonParserPrimitive;-><init>(Lcom/htc/gson/JsonElement;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local v0           #element:Lcom/htc/gson/JsonElement;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    :cond_5
    return-object v4
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v0, p1}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isParseable()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseArray(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParserArray;
    .locals 3
    .parameter "key"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 50
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p0, v0}, Lcom/htc/opensense/parser/JsonParserObject;->parseFromStr(Lcom/htc/gson/JsonElement;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 56
    :cond_2
    new-instance v1, Lcom/htc/opensense/parser/JsonParserArray;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/opensense/parser/JsonParserArray;-><init>(Lcom/htc/gson/JsonArray;)V

    goto :goto_0
.end method

.method public parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/parser/JsonParserObject;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parseBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 95
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 98
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsBoolean()Z

    move-result p2

    goto :goto_0
.end method

.method public parseDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 139
    const-wide/high16 v0, -0x4010

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/opensense/parser/JsonParserObject;->parseDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public parseDouble(Ljava/lang/String;D)D
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 145
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 148
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsDouble()D

    move-result-wide p2

    goto :goto_0
.end method

.method public parseFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "key"

    .prologue
    .line 125
    const/high16 v0, -0x4080

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/parser/JsonParserObject;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public parseFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 131
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 134
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsFloat()F

    move-result p2

    goto :goto_0
.end method

.method protected parseFromStr(Lcom/htc/gson/JsonElement;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "element"

    .prologue
    .line 175
    new-instance v0, Lcom/htc/gson/JsonParser;

    invoke-direct {v0}, Lcom/htc/gson/JsonParser;-><init>()V

    .line 176
    .local v0, parser:Lcom/htc/gson/JsonParser;
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object p1

    .line 177
    return-object p1
.end method

.method public parseInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/parser/JsonParserObject;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public parseInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 81
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 84
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result p2

    goto :goto_0
.end method

.method public parseLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 111
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/opensense/parser/JsonParserObject;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 117
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 120
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsLong()J

    move-result-wide p2

    goto :goto_0
.end method

.method public parseObj(Ljava/lang/String;)Lcom/htc/opensense/parser/BasicParserObj;
    .locals 3
    .parameter "key"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 37
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    const-string v1, "JsonParserObject"

    const-string v2, "Facebook is primitive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0, v0}, Lcom/htc/opensense/parser/JsonParserObject;->parseFromStr(Lcom/htc/gson/JsonElement;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 44
    :cond_2
    new-instance v1, Lcom/htc/opensense/parser/JsonParserObject;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/opensense/parser/JsonParserObject;-><init>(Lcom/htc/gson/JsonObject;)V

    goto :goto_0
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/parser/JsonParserObject;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 67
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/gson/JsonNull;

    if-eqz v1, :cond_1

    .line 70
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/opensense/parser/JsonParserObject;->mJsonObj:Lcom/htc/gson/JsonObject;

    invoke-virtual {v0}, Lcom/htc/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
